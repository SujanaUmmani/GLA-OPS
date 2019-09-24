/**
 * Copyright (c) Greater London Authority, 2016.
 *
 * This source code is licensed under the Open Government Licence 3.0.
 *
 * http://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/
 */
package uk.gov.london.ops.domain.user;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import uk.gov.london.common.user.BaseRole;
import uk.gov.london.ops.domain.organisation.Organisation;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Objects;

@Entity(name="user_roles")
public class Role extends BaseRole implements GrantedAuthority, Serializable {

    // if changing this, change v_user_summaries case statement
    private static final List<String> THRESHOLD_ROLES = Arrays.asList(
            OPS_ADMIN,
            GLA_ORG_ADMIN,
            GLA_SPM
    );

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "user_roles_seq_gen")
    @SequenceGenerator(name = "user_roles_seq_gen", sequenceName = "user_roles_seq", initialValue = 1000, allocationSize = 1)
    private Integer id;

    @Column(nullable = false)
    private String name;

    @Column(nullable = false)
    private String username;

    @ManyToOne(cascade = {})
    @JoinColumn(name = "organisation_id", nullable = false)
    private Organisation organisation;

    @Column(name="approved")
    private Boolean approved;

    @Column(name="primary_org_for_user")
    private Boolean primaryOrganisationForUser;

    @Column(name="approved_on")
    @Temporal(TemporalType.TIMESTAMP)
    private Date approvedOn;

    @Column(name="approved_by")
    private String approvedBy;

    public Role() {}

    public Role(String name, String username, Organisation organisation) {
        this.name = name;
        this.username = username;
        this.organisation = organisation;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUsername() {
        return username;
    }

    public Organisation getOrganisation() {
        return organisation;
    }

    public void setOrganisation(Organisation organisation) {
        this.organisation = organisation;
    }

    public boolean isApproved() {
        return Boolean.TRUE.equals(approved);
    }

    public void setApproved(boolean approved) {
        this.approved = approved;
    }

    public Date getApprovedOn() {
        return approvedOn;
    }

    public void setApprovedOn(Date approvedOn) {
        this.approvedOn = approvedOn;
    }

    public String getApprovedBy() {
        return approvedBy;
    }

    public void setApprovedBy(String approvedBy) {
        this.approvedBy = approvedBy;
    }

    public String getDescription() {
        return BaseRole.getDescription(this.name);
    }

    public Boolean isPrimaryOrganisationForUser() {
        return primaryOrganisationForUser == null ? false : primaryOrganisationForUser;
    }

    public void setPrimaryOrganisationForUser(Boolean primaryOrganisationForUser) {
        this.primaryOrganisationForUser = primaryOrganisationForUser;
    }

    public void approve() {
        this.approved = true;
        this.approvedOn = new Date();
        this.approvedBy = SecurityContextHolder.getContext().getAuthentication() != null ? SecurityContextHolder.getContext().getAuthentication().getName() : null;
    }

    public void unapprove() {
        this.approved = false;
        this.approvedOn = null;
        this.approvedBy = null;
    }

    @Override
    public String getAuthority() {
        return name;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Role role = (Role) o;
        return Objects.equals(name, role.name) &&
                Objects.equals(username, role.username) &&
                Objects.equals(organisation, role.organisation);
    }

    @Override
    public int hashCode() {
        return Objects.hash(name, username, organisation);
    }

    public static String getDefaultForOrganisation(Organisation organisation) {
        if (organisation.isManagingOrganisation()) {
            return GLA_PM;
        } else {
            // if no users on this org then must be first reg
            if (organisation.getUserEntities()== null || organisation.getUserEntities().size() == 0) {
                return ORG_ADMIN;
            }
            if(organisation.isTechSupportOrganisation()) {
                return TECH_ADMIN;
            }
            return PROJECT_EDITOR;
        }
    }

    public String getSimpleName() {
        return name.replace("ROLE_", "");
    }

    public boolean isThresholdRole() {
        return THRESHOLD_ROLES.contains(this.getName());
    }

}
