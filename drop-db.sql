drop table if exists annual_spend CASCADE;
drop table if exists annual_submission CASCADE;
drop table if exists annual_submission_block CASCADE;
drop table if exists annual_submission_category CASCADE;
drop table if exists annual_submission_entry CASCADE;
drop table if exists answer CASCADE;
drop table if exists answer_attachment CASCADE;
drop table if exists attachment CASCADE;
drop table if exists audit_activity CASCADE;
drop table if exists borough CASCADE;
drop table if exists category_value CASCADE;
drop table if exists ce_code CASCADE;
drop table if exists comment CASCADE;
drop table if exists cluster_lock CASCADE;
drop table if exists contract CASCADE;
drop table if exists criteria_answer_options CASCADE;
drop table if exists database_updates CASCADE;
drop table if exists databasechangelog CASCADE;
drop table if exists databasechangeloglock CASCADE;
drop table if exists delivery_partner CASCADE;
drop table if exists delivery_partners_block CASCADE;
drop table if exists design_standards CASCADE;
drop table if exists email CASCADE;
drop table if exists email_attachment CASCADE;
drop table if exists entity_subscription CASCADE;
drop table if exists env_info CASCADE;
drop table if exists feature CASCADE;
drop table if exists file CASCADE;
drop table if exists finance_category CASCADE;
drop table if exists funding_activity CASCADE;
drop table if exists funding_activity_group CASCADE;
drop table if exists funding_activity_project_ledger_entry CASCADE;
drop table if exists funding_block CASCADE;
drop table if exists funding_claims_block CASCADE;
drop table if exists funding_claims_entry CASCADE;
drop table if exists funding_claims_variation CASCADE;
drop table if exists grant_source CASCADE;
drop table if exists grant_source_block CASCADE;
drop table if exists import_errors CASCADE;
drop table if exists import_process_log CASCADE;
drop table if exists indicative_tenure_config CASCADE;
drop table if exists indicative_tenure_config_year CASCADE;
drop table if exists indicative_tenure_value CASCADE;
drop table if exists int_lock CASCADE;
drop table if exists internal_project_block CASCADE;
drop table if exists internal_risk_block CASCADE;
drop table if exists internal_template_block CASCADE;
drop table if exists legacy_ims_project CASCADE;
drop table if exists legacy_ims_reported_figures CASCADE;
drop table if exists lock_details CASCADE;
drop table if exists logging_event CASCADE;
drop table if exists logging_event_exception CASCADE;
drop table if exists logging_event_property CASCADE;
drop table if exists market_type CASCADE;
drop table if exists message CASCADE;
drop table if exists milestone CASCADE;
drop table if exists milestone_template CASCADE;
drop table if exists milestones_block CASCADE;
drop table if exists notification CASCADE;
drop table if exists notification_type CASCADE;
drop table if exists organisation CASCADE;
drop table if exists organisation_budget_entry CASCADE;
drop table if exists organisation_contract CASCADE;
drop table if exists organisation_entity_type CASCADE;
drop table if exists organisation_group CASCADE;
drop table if exists organisation_group_organisation CASCADE;
drop table if exists organisation_programme CASCADE;
drop table if exists other_funding_attachment CASCADE;
drop table if exists output_cat_config CASCADE;
drop table if exists output_config_group CASCADE;
drop table if exists output_group_output_config CASCADE;
drop table if exists output_group_output_type CASCADE;
drop table if exists output_table_entry CASCADE;
drop table if exists output_type CASCADE;
drop table if exists outputs CASCADE;
drop table if exists password_reset_token CASCADE;
drop table if exists payment_group CASCADE;
drop table if exists payment_group_payment CASCADE;
drop table if exists payment_request CASCADE;
drop table if exists processing_route CASCADE;
drop table if exists programme CASCADE;
drop table if exists programme_template CASCADE;
drop table if exists project CASCADE;
drop table if exists project_action CASCADE;
drop table if exists project_block CASCADE;
drop table if exists project_block_question CASCADE;
drop table if exists project_budgets CASCADE;
drop table if exists project_budgets_attachment CASCADE;
drop table if exists project_details_block CASCADE;
drop table if exists project_element CASCADE;
drop table if exists project_elements CASCADE;
drop table if exists project_history CASCADE;
drop table if exists project_ledger_entry CASCADE;
drop table if exists project_risk CASCADE;
drop table if exists question CASCADE;
drop table if exists question_answer_options CASCADE;
drop table if exists questions_block CASCADE;
drop table if exists questions_block_section CASCADE;
drop table if exists receipts_block CASCADE;
drop table if exists report CASCADE;
drop table if exists report_filters CASCADE;
drop table if exists risks_block CASCADE;
drop table if exists risk_level CASCADE;
drop table if exists risk_rating CASCADE;
drop table if exists sap_data CASCADE;
drop table if exists sap_payment CASCADE;
drop table if exists sap_receipt_category_codes CASCADE;
drop table if exists sap_spend_category_codes CASCADE;
drop table if exists scheduled_notification CASCADE;
drop table if exists scheduled_task CASCADE;
drop table if exists strategic_units_for_tenure CASCADE;
drop table if exists template CASCADE;
drop table if exists table_relationships CASCADE;
drop table if exists team CASCADE;
drop table if exists template_block CASCADE;
drop table if exists template_block_question CASCADE;
drop table if exists template_blocks_enabled CASCADE;
drop table if exists template_question CASCADE;
drop table if exists template_tenure_type CASCADE;
drop table if exists template_tenure_type_market_type CASCADE;
drop table if exists tenure_and_units CASCADE;
drop table if exists tenure_block CASCADE;
drop table if exists tenure_market_type CASCADE;
drop table if exists tenure_type CASCADE;
drop table if exists total_spend CASCADE;
drop table if exists total_spend_attachment CASCADE;
drop table if exists unit_details_block CASCADE;
drop table if exists units_table_entry CASCADE;
drop table if exists user_defined_output CASCADE;
drop table if exists user_defined_outputs CASCADE;
drop table if exists user_notification CASCADE;
drop table if exists user_org_finance_threshold CASCADE;
drop table if exists user_report CASCADE;
drop table if exists user_roles CASCADE;
drop table if exists users CASCADE;
drop table if exists ward CASCADE;
drop table if exists wbs_code CASCADE;
drop table if exists year_quarters CASCADE;
drop table if exists subcontracting_block CASCADE;
drop table if exists funding_claim CASCADE;
drop table if exists pre_set_label CASCADE;
drop table if exists outputs_category_cost CASCADE;
drop table if exists risk_adjusted_figures CASCADE;
drop table if exists outputs_costs_block CASCADE;
drop table if exists project_block_question_old CASCADE;
drop table if exists subcontractor CASCADE;
drop table if exists outputs_claim CASCADE;
drop table if exists assessment_template_section CASCADE;
drop table if exists assessment_template_score CASCADE;
drop table if exists assessment_template_criteria CASCADE;
drop table if exists assessment_template_outcome CASCADE;
drop table if exists internal_assessment_block CASCADE;
drop table if exists assessment_template CASCADE;
drop table if exists assessment CASCADE;
drop table if exists label CASCADE;
drop table if exists assessment_section CASCADE;
drop table if exists assessment_criteria CASCADE;
drop table if exists project_state CASCADE;
drop table if exists ptat_roles CASCADE;
drop table if exists progress_update_block CASCADE;
drop table if exists project_block_label CASCADE;
drop table if exists output_category_assumption CASCADE;
drop table if exists payment_profile CASCADE;
drop table if exists learning_grant_block CASCADE;
drop table if exists learning_grant_entry CASCADE;
drop table if exists skills_funding_summary CASCADE;
drop table if exists programme_template_assessment_template CASCADE;
drop table if exists template_tenure_type_market_type CASCADE;
drop table if exists user_report CASCADE;
drop table if exists report_filters CASCADE;
drop table if exists claim CASCADE;
drop table if exists delivery_override CASCADE;
drop table if exists deliverable CASCADE;
drop table if exists template_deliverable_types CASCADE;
drop table if exists config_list_item CASCADE;
drop table if exists learning_grant_allocation CASCADE;
drop table if exists assessment_template_outcome CASCADE;
drop table if exists other_funding CASCADE;
drop table if exists other_funding_block CASCADE;
drop table if exists project_objective CASCADE;
drop table if exists project_objectives CASCADE;
drop table if exists contract_type_funding_entry CASCADE;
drop table if exists contract_type_selection CASCADE;
drop table if exists project_access_control CASCADE;
drop table if exists default_access_control CASCADE;
drop table if exists payment_audit_item CASCADE;
drop table if exists payment_source CASCADE;
drop table if exists team_legacy CASCADE;





DROP SEQUENCE IF EXISTS action_seq CASCADE;
DROP SEQUENCE IF EXISTS annual_submission_seq CASCADE;
DROP SEQUENCE IF EXISTS assessment_template_outcome_seq CASCADE;
DROP SEQUENCE IF EXISTS assessment_template_outcome_id_seq CASCADE;
DROP SEQUENCE IF EXISTS annual_submission_block_seq CASCADE;
DROP SEQUENCE IF EXISTS annual_submission_category_seq CASCADE;
DROP SEQUENCE IF EXISTS annual_submission_entry_seq CASCADE;
DROP SEQUENCE IF EXISTS answer_id_seq CASCADE;
DROP SEQUENCE IF EXISTS answer_option_seq CASCADE;
DROP SEQUENCE IF EXISTS answer_seq CASCADE;
DROP SEQUENCE IF EXISTS audit_activity_id_seq CASCADE;
DROP SEQUENCE IF EXISTS audit_activity_seq CASCADE;
DROP SEQUENCE IF EXISTS budget_and_tenure_id_seq CASCADE;
DROP SEQUENCE IF EXISTS budget_and_tenure_seq CASCADE;
DROP SEQUENCE IF EXISTS comment_seq CASCADE;
DROP SEQUENCE IF EXISTS contract_seq CASCADE;
DROP SEQUENCE IF EXISTS criteria_answer_option_seq CASCADE;
DROP SEQUENCE IF EXISTS database_update_seq CASCADE;
DROP SEQUENCE IF EXISTS design_standards_id_seq CASCADE;
DROP SEQUENCE IF EXISTS design_standards_seq CASCADE;
DROP SEQUENCE IF EXISTS email_id_seq CASCADE;
DROP SEQUENCE IF EXISTS email_seq CASCADE;
DROP SEQUENCE IF EXISTS entity_subscription_seq CASCADE;
DROP SEQUENCE IF EXISTS file_id_seq CASCADE;
DROP SEQUENCE IF EXISTS file_seq CASCADE;
DROP SEQUENCE IF EXISTS finance_category_seq CASCADE;
DROP SEQUENCE IF EXISTS funding_activity_seq CASCADE;
DROP SEQUENCE IF EXISTS funding_activity_group_seq CASCADE;
DROP SEQUENCE IF EXISTS funding_claims_entry_seq CASCADE;
DROP SEQUENCE IF EXISTS funding_claims_variation_id_seq CASCADE;
DROP SEQUENCE IF EXISTS funding_claims_variation_seq CASCADE;
DROP SEQUENCE IF EXISTS grant_source_id_seq CASCADE;
DROP SEQUENCE IF EXISTS grant_source_seq CASCADE;
DROP SEQUENCE IF EXISTS import_error_id_seq CASCADE;
DROP SEQUENCE IF EXISTS import_error_log_seq CASCADE;
DROP SEQUENCE IF EXISTS import_process_log_id_seq CASCADE;
DROP SEQUENCE IF EXISTS import_process_log_seq CASCADE;
DROP SEQUENCE IF EXISTS indicative_tenure_config_year_seq CASCADE;
DROP SEQUENCE IF EXISTS indicative_tenure_config_id_seq CASCADE;
DROP SEQUENCE IF EXISTS indicative_tenure_config_seq CASCADE;
DROP SEQUENCE IF EXISTS indicative_tenure_value_id_seq CASCADE;
DROP SEQUENCE IF EXISTS indicative_val_seq CASCADE;
DROP SEQUENCE IF EXISTS internal_project_block_seq CASCADE;
DROP SEQUENCE IF EXISTS internal_risk_block_seq CASCADE;
DROP SEQUENCE IF EXISTS internal_template_block_seq CASCADE;
DROP SEQUENCE IF EXISTS ledger_seq CASCADE;
DROP SEQUENCE IF EXISTS legacy_ims_project_seq CASCADE;
DROP SEQUENCE IF EXISTS legacy_ims_reported_figures_seq CASCADE;
DROP SEQUENCE IF EXISTS logging_event_id_seq CASCADE;
DROP SEQUENCE IF EXISTS milestone_id_seq CASCADE;
DROP SEQUENCE IF EXISTS milestone_seq CASCADE;
DROP SEQUENCE IF EXISTS milestone_template_id_seq CASCADE;
DROP SEQUENCE IF EXISTS milestone_template_seq CASCADE;
DROP SEQUENCE IF EXISTS milestones_block_id_seq CASCADE;
DROP SEQUENCE IF EXISTS milestones_block_seq CASCADE;
DROP SEQUENCE IF EXISTS notification_seq CASCADE;
DROP SEQUENCE IF EXISTS organisation_budget_entry_seq CASCADE;
DROP SEQUENCE IF EXISTS organisation_contract_seq CASCADE;
DROP SEQUENCE IF EXISTS organisation_group_id_seq CASCADE;
DROP SEQUENCE IF EXISTS organisation_group_seq CASCADE;
DROP SEQUENCE IF EXISTS organisation_id_seq CASCADE;
DROP SEQUENCE IF EXISTS organisation_seq CASCADE;
DROP SEQUENCE IF EXISTS output_seq CASCADE;
DROP SEQUENCE IF EXISTS password_reset_token_id_seq CASCADE;
DROP SEQUENCE IF EXISTS password_reset_token_seq CASCADE;
DROP SEQUENCE IF EXISTS payment_id_seq CASCADE;
DROP SEQUENCE IF EXISTS payment_group_sequence CASCADE;
DROP SEQUENCE IF EXISTS payment_seq CASCADE;
DROP SEQUENCE IF EXISTS processing_route_id_seq CASCADE;
DROP SEQUENCE IF EXISTS processing_route_seq CASCADE;
DROP SEQUENCE IF EXISTS programme_id_seq CASCADE;
DROP SEQUENCE IF EXISTS programme_seq CASCADE;
DROP SEQUENCE IF EXISTS project_block_id_seq CASCADE;
DROP SEQUENCE IF EXISTS project_block_seq CASCADE;
DROP SEQUENCE IF EXISTS project_element_seq CASCADE;
DROP SEQUENCE IF EXISTS project_element_id_seq CASCADE;
DROP SEQUENCE IF EXISTS project_elements_id_seq CASCADE;
DROP SEQUENCE IF EXISTS project_history_id_seq CASCADE;
DROP SEQUENCE IF EXISTS project_history_seq CASCADE;
DROP SEQUENCE IF EXISTS project_id_seq CASCADE;
DROP SEQUENCE IF EXISTS project_ledger_entry_id_seq CASCADE;
DROP SEQUENCE IF EXISTS project_risk_seq CASCADE;
DROP SEQUENCE IF EXISTS project_seq CASCADE;
DROP SEQUENCE IF EXISTS question_answer_options_id_seq CASCADE;
DROP SEQUENCE IF EXISTS question_id_seq CASCADE;
DROP SEQUENCE IF EXISTS question_seq CASCADE;
DROP SEQUENCE IF EXISTS questions_block_id_seq CASCADE;
DROP SEQUENCE IF EXISTS questions_block_seq CASCADE;
DROP SEQUENCE IF EXISTS questions_block_section_seq CASCADE;
DROP SEQUENCE IF EXISTS report_seq CASCADE;
DROP SEQUENCE IF EXISTS risk_rating_seq CASCADE;
DROP SEQUENCE IF EXISTS risks_block_seq CASCADE;
DROP SEQUENCE IF EXISTS sap_data_id_seq CASCADE;
DROP SEQUENCE IF EXISTS sap_data_seq CASCADE;
DROP SEQUENCE IF EXISTS sap_payment_id_seq CASCADE;
DROP SEQUENCE IF EXISTS sap_payment_seq CASCADE;
DROP SEQUENCE IF EXISTS sap_spend_category_codes_id_seq CASCADE;
DROP SEQUENCE IF EXISTS scheduled_notification_id_seq CASCADE;
DROP SEQUENCE IF EXISTS scheduled_notification_seq CASCADE;
DROP SEQUENCE IF EXISTS skills_funding_summary_seq CASCADE;
DROP SEQUENCE IF EXISTS spend_cat_code_seq CASCADE;
DROP SEQUENCE IF EXISTS strategic_units_for_tenure_seq CASCADE;
DROP SEQUENCE IF EXISTS team_seq CASCADE;
DROP SEQUENCE IF EXISTS template_block_id_seq CASCADE;
DROP SEQUENCE IF EXISTS template_block_seq CASCADE;
DROP SEQUENCE IF EXISTS template_id_seq CASCADE;
DROP SEQUENCE IF EXISTS template_question_id_seq CASCADE;
DROP SEQUENCE IF EXISTS template_question_seq CASCADE;
DROP SEQUENCE IF EXISTS template_seq CASCADE;
DROP SEQUENCE IF EXISTS tenure_and_units_id_seq CASCADE;
DROP SEQUENCE IF EXISTS tenure_and_units_seq CASCADE;
DROP SEQUENCE IF EXISTS tenure_typ_seq CASCADE;
DROP SEQUENCE IF EXISTS tenure_type_id_seq CASCADE;
DROP SEQUENCE IF EXISTS total_spend_attachment_id_seq CASCADE;
DROP SEQUENCE IF EXISTS total_spend_attachment_seq CASCADE;
DROP SEQUENCE IF EXISTS total_spend_id_seq CASCADE;
DROP SEQUENCE IF EXISTS units_table_entry_seq CASCADE;
DROP SEQUENCE IF EXISTS user_defined_output_seq CASCADE;
DROP SEQUENCE IF EXISTS user_notification_seq CASCADE;
DROP SEQUENCE IF EXISTS user_roles_id_seq CASCADE;
DROP SEQUENCE IF EXISTS user_roles_seq CASCADE;
DROP SEQUENCE IF EXISTS wbs_code_id_seq CASCADE;
DROP SEQUENCE IF EXISTS wbs_code_seq CASCADE;
DROP SEQUENCE IF EXISTS user_report_seq CASCADE;
DROP SEQUENCE IF EXISTS subcontracting_block_id_seq CASCADE;
DROP SEQUENCE IF EXISTS funding_claim_seq CASCADE;
DROP SEQUENCE IF EXISTS funding_claim_id_seq CASCADE;
DROP SEQUENCE IF EXISTS pre_set_label_seq CASCADE;
DROP SEQUENCE IF EXISTS pre_set_label_id_seq CASCADE;
DROP SEQUENCE IF EXISTS risk_adjusted_figures_seq CASCADE;
DROP SEQUENCE IF EXISTS risk_adjusted_figures_id_seq CASCADE;
DROP SEQUENCE IF EXISTS outputs_category_cost_seq CASCADE;
DROP SEQUENCE IF EXISTS outputs_category_cost_id_seq CASCADE;
DROP SEQUENCE IF EXISTS subcontractor_seq CASCADE;
DROP SEQUENCE IF EXISTS subcontractor_id_seq CASCADE;
DROP SEQUENCE IF EXISTS outputs_claim_seq CASCADE;
DROP SEQUENCE IF EXISTS outputs_claim_id_seq CASCADE;
DROP SEQUENCE IF EXISTS assessment_template_score_seq CASCADE;
DROP SEQUENCE IF EXISTS assessment_template_score_id_seq CASCADE;
DROP SEQUENCE IF EXISTS assessment_template_seq CASCADE;
DROP SEQUENCE IF EXISTS assessment_template_id_seq CASCADE;
DROP SEQUENCE IF EXISTS assessment_template_section_seq CASCADE;
DROP SEQUENCE IF EXISTS assessment_template_section_id_seq CASCADE;
DROP SEQUENCE IF EXISTS assessment_template_criteria_seq CASCADE;
DROP SEQUENCE IF EXISTS assessment_template_criteria_id_seq CASCADE;
DROP SEQUENCE IF EXISTS assessment_template_outcome_id_seq CASCADE;
DROP SEQUENCE IF EXISTS internal_assessment_block_seq CASCADE;
DROP SEQUENCE IF EXISTS internal_assessment_block_id_seq CASCADE;
DROP SEQUENCE IF EXISTS assessment_seq CASCADE;
DROP SEQUENCE IF EXISTS assessment_id_seq CASCADE;
DROP SEQUENCE IF EXISTS assessment_section_seq CASCADE;
DROP SEQUENCE IF EXISTS assessment_section_id_seq CASCADE;
DROP SEQUENCE IF EXISTS assessment_criteria_seq CASCADE;
DROP SEQUENCE IF EXISTS assessment_criteria_id_seq CASCADE;
DROP SEQUENCE IF EXISTS project_block_question_seq CASCADE;
DROP SEQUENCE IF EXISTS project_block_label_seq CASCADE;
DROP SEQUENCE IF EXISTS label_seq CASCADE;
DROP SEQUENCE IF EXISTS label_id_seq CASCADE;
DROP SEQUENCE IF EXISTS project_block_label_id_seq CASCADE;
DROP SEQUENCE IF EXISTS assumption_seq CASCADE;
DROP SEQUENCE IF EXISTS payment_profile_seq CASCADE;
DROP SEQUENCE IF EXISTS payment_profile_id_seq CASCADE;
DROP SEQUENCE IF EXISTS learning_grant_entry_seq CASCADE;
DROP SEQUENCE IF EXISTS learning_grant_entry_id_seq CASCADE;
DROP SEQUENCE IF EXISTS ptat_seq CASCADE;
DROP SEQUENCE IF EXISTS funding_activity_seq CASCADE;
DROP SEQUENCE IF EXISTS funding_activity_group_seq CASCADE;
DROP SEQUENCE IF EXISTS user_report_id_seq CASCADE;
DROP SEQUENCE IF EXISTS override_seq CASCADE;
DROP SEQUENCE IF EXISTS override_id_seq CASCADE;
DROP SEQUENCE IF EXISTS deliverable_seq CASCADE;
DROP SEQUENCE IF EXISTS deliverable_id_seq CASCADE;
DROP SEQUENCE IF EXISTS config_list_item_seq CASCADE;
DROP SEQUENCE IF EXISTS config_list_item_id_seq CASCADE;
DROP SEQUENCE IF EXISTS learning_grant_allocation_seq CASCADE;
DROP SEQUENCE IF EXISTS learning_grant_allocation_id_seq CASCADE;
DROP SEQUENCE IF EXISTS other_funding_id_seq CASCADE;
DROP SEQUENCE IF EXISTS other_funding_seq CASCADE;
DROP SEQUENCE IF EXISTS project_objective_id_seq CASCADE;
DROP SEQUENCE IF EXISTS project_objective_seq CASCADE;
DROP SEQUENCE IF EXISTS project_objectives_id_seq CASCADE;
DROP SEQUENCE IF EXISTS contract_type_funding_entry_seq CASCADE;
DROP SEQUENCE IF EXISTS contract_type_selection_seq CASCADE;
DROP SEQUENCE IF EXISTS payment_audit_item_id_seq CASCADE;
DROP SEQUENCE IF EXISTS payment_audit_seq CASCADE;
DROP SEQUENCE IF EXISTS team_id_seq CASCADE;


