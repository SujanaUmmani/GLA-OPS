/**
 * Copyright (c) Greater London Authority, 2016.
 *
 * This source code is licensed under the Open Government Licence 3.0.
 *
 * http://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/
 */
package uk.gov.london.ops.domain.project;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Transient;

public abstract class BaseFinanceBlock extends NamedProjectBlock {

    @Transient
    protected Set<Integer> populatedYears = new HashSet<>();

    protected BaseFinanceBlock() {}

    protected BaseFinanceBlock(Project project) {
        super(project);
    }

    public Set<Integer> getPopulatedYears() {
        return populatedYears;
    }

    public void setPopulatedYears(Set<Integer> populatedYears) {
        this.populatedYears = populatedYears;
    }

    @Override
    protected void generateValidationFailures() {}

}
