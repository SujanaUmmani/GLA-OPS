/**
 * Copyright (c) Greater London Authority, 2016.
 *
 * This source code is licensed under the Open Government Licence 3.0.
 *
 * http://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/
 */
package uk.gov.london.ops.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import uk.gov.london.ops.domain.project.Project;
import uk.gov.london.ops.service.project.ProjectService;
import uk.gov.london.ops.spe.SimpleProjectExportConfig;
import uk.gov.london.ops.util.GlaOpsUtils;

import java.io.IOException;
import java.util.*;
import java.util.function.Function;
import java.util.stream.Collectors;

/**
 * Service for Simple Data Extract.
 */
@Service
public class SdeService {

    private static  final Logger log =
            LoggerFactory.getLogger(SdeService.class);
    private final ProjectService projectService;
    private final SimpleProjectExportConfig simpleProjectExportConfig;

    public SdeService(final ProjectService projectService,
                      final SimpleProjectExportConfig simpleProjectExportConfig)
    {
        this.projectService = projectService;
        this.simpleProjectExportConfig= simpleProjectExportConfig;
    }


    /**
     * Provides a list of items, where each of them represents a project
     * containing the information of all the blocks within the projects.
     *
     * @param id programme id
     * @return List of Map with the project data.
     */
    public List<Map<String, Object>> simpleDataExtract(final int id){
        try{
            return  projectService.getProjectsForProgramme(id, null)
                    .stream()
                    .filter(GlaOpsUtils::notNull)
                    .map(this::sdeWithConfig)
                    .collect(Collectors.toList());
        } catch(Exception ex) {
            log.error(ex.getMessage(), ex);
            return new ArrayList<>();
        }
    }

    private Map<String, Object> sdeWithConfig(final Project p) {
        return p.simpleDataExtract(simpleProjectExportConfig);
    }
}