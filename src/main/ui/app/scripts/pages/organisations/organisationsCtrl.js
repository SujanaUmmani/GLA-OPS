/**
 * Copyright (c) Greater London Authority, 2016.
 *
 * This source code is licensed under the Open Government Licence 3.0.
 *
 * http://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/
 */

class OrganisationsCtrl {
  constructor($rootScope, $state, $stateParams, OrganisationService, RequestOrganisationAccessModal, ToastrUtil, UserService, organisationTypes, SessionService) {
    $rootScope.showGlobalLoadingMask = true;
    this.$rootScope = $rootScope;
    this.$state = $state;
    this.$stateParams = $stateParams;
    this.OrganisationService = OrganisationService;
    this.RequestOrganisationAccessModal = RequestOrganisationAccessModal;
    this.ToastrUtil = ToastrUtil;
    this.UserService = UserService;
    this.SessionService = SessionService;
    this.organisationTypes = organisationTypes;
    this.showFilters = true;
    this.loading = true;
    this.cachedOrgsFilter = SessionService.getOrganisationsFilter();

    this.initSearchDropdown();
    this.initOrgTypeDropdown();
    this.initOrgStatusDropdown();
    this.initRegistrationsDropdown();


    this.user = UserService.currentUser();
    this.orgCollection = [];
    this.totalItems = 0;
    this.indexStart = 0;
    this.indexEnd = 0;
    this.itemsPerPage = 50;

    //Current page starts by 1 in UI but by 0 in backend
    this.currentPage = 1;
    this.sortByName = 'name';
    this.sortReverse = false;


    this.getOrganisations(false, true);
  }

  initSearchDropdown() {
    this.searchOptions = [
      {
        name: 'title',
        description: 'Organisation',
        hint: 'Enter organisation ID or name',
        maxLength: '50'
      }
    ];
    this.selectedSearchOption = this.searchOptions[0];
    console.log('this.$stateParams', this.$stateParams);
    this.searchText = this.$stateParams.searchText || (this.cachedOrgsFilter || {}).searchText;
  }

  initOrgTypeDropdown() {
    const selections = (this.cachedOrgsFilter || {}).orgTypes || [];
    this.orgTypeDropdown = Object.keys(this.organisationTypes).reduce((items, key) => {
      items.push({
        id: key,
        label: this.organisationTypes[key],
        model: selections.indexOf(key) === -1 ? false : true
      });
      return items;
    }, []);
    this.showResetCheckboxes = false;
  };

  initOrgStatusDropdown() {
    const selections = (this.cachedOrgsFilter || {}).orgStatuses || [];
    this.orgStatusDropdown = ['Approved', 'Pending'].map(status => {
      return {
        id: status,
        label: status,
        model: selections.indexOf(status) === -1 ? false : true
      }
    });
    this.showResetCheckboxes = false;
  };

  initRegistrationsDropdown() {
    const selections = (this.cachedOrgsFilter || {}).userRegStatuses || [];
    this.userRegStatusDropdown = this.OrganisationService.userRegStatuses(selections);
  }


  getOrganisations(resetPage, initialLoad) {
    var page = resetPage ? 0 : this.currentPage - 1;
    var size = this.itemsPerPage;
    var sort = [this.sortByName + ',' + (this.sortReverse ? 'desc' : 'asc')];
    if (this.sortByName != 'name') {
      sort.push('name,asc');
    }

    if (this.user.approved) {
      const orgTypes = this.getSelectedCheckboxes(this.orgTypeDropdown);
      const orgStatuses = this.getSelectedCheckboxes(this.orgStatusDropdown);
      const userRegStatuses = this.getSelectedCheckboxes(this.userRegStatusDropdown);
      this.showReset = orgTypes.length || orgStatuses.length || userRegStatuses.length || this.searchText;



      this.updateBrowserUrl();
      this.OrganisationService.retrieveAll(page, size, sort, userRegStatuses, this.searchText, orgTypes, orgStatuses).then(response => {
        this.lastSearchText = this.searchText;
        this.$rootScope.showGlobalLoadingMask = false;
        this.loading = false;
        if (resetPage) {
          this.currentPage = 1;
        }
        this.orgCollection = response.data.content;
        if (initialLoad && !this.searchText) {
          this.showFilters = this.orgCollection.length > 1 || (this.cachedOrgsFilter || {}).showFilters;
        }

        this.SessionService.setOrganisationsFilter({
          showFilters: this.showFilters,
          searchText: this.searchText,
          orgTypes,
          orgStatuses,
          userRegStatuses,
        });

        this.totalItems = response.data.totalElements;
      });
    } else {
      this.$rootScope.showGlobalLoadingMask = false;
      this.showFilters = false;
    }
  }


  getSelectedOrgTypes() {
    const orgTypes = this.orgTypeDropdown.reduce((selectedTypes, item) => {
      if (item.model) {
        selectedTypes.push(item.id)
      }
      return selectedTypes;
    }, []);
    return orgTypes;
  }

  getSelectedCheckboxes(checkboxesDropdown) {
    const selections = checkboxesDropdown.reduce((selectedValues, item) => {
      if (item.model) {
        selectedValues.push(item.id)
      }
      return selectedValues;
    }, []);
    return selections;
  }

  search() {
    this.getOrganisations(true);
  }

  clearSearchText() {
    this.searchText = null;
    this.getOrganisations(true);
  }

  clearAll() {
    this.resetSearch = true;
    this.cachedOrgsFilter = null;
    this.SessionService.setOrganisationsFilter(null);
    this.searchText = null;
    this.initOrgTypeDropdown();
    this.initOrgStatusDropdown();
    this.initRegistrationsDropdown();
    this.getOrganisations(true);
  }

  getDetails(orgId) {
    this.$state.go('organisation', {'orgId': orgId});
  }

  sortBy(columnName) {
    console.log('sorting');
    this.sortReverse = (this.sortByName === columnName) ? !this.sortReverse : false;
    this.sortByName = columnName;
    this.currentPage = 1;
    this.getOrganisations();
  }

  requestOrganisationAccess() {
    var modal = this.RequestOrganisationAccessModal.show(this);
    modal.result.then(orgCode => {
      if (orgCode) {
        this.OrganisationService.linkUserToOrganisation(orgCode, this.user.username).then(() => {
          this.ToastrUtil.success('Your request was sent successfully. You will be notified on approval.');
        });
      }
    })
  }

  updateBrowserUrl() {
    this.$state.go(this.$state.current, {searchText: this.searchText}, {notify: false});
  }
}

OrganisationsCtrl.$inject = ['$rootScope', '$state', '$stateParams', 'OrganisationService', 'RequestOrganisationAccessModal', 'ToastrUtil', 'UserService', 'organisationTypes', 'SessionService'];


angular.module('GLA')
  .controller('OrganisationsCtrl', OrganisationsCtrl);