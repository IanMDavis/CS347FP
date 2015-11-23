set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050000 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2013.01.01'
,p_release=>'5.0.2.00.07'
,p_default_workspace_id=>12900390415261162913
,p_default_application_id=>99026
,p_default_owner=>'APEX_5'
);
end;
/
prompt --application/set_environment
 
prompt APPLICATION 99026 - F15_D3_Mobile
--
-- Application Export:
--   Application:     99026
--   Name:            F15_D3_Mobile
--   Date and Time:   05:31 Monday November 23, 2015
--   Exported By:     IAN.D@LIVE.COM
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         5.0.2.00.07
--   Instance ID:     63113759365424
--

-- Application Statistics:
--   Pages:                     12
--     Items:                   80
--     Processes:               10
--     Regions:                 23
--     Buttons:                 12
--     Dynamic Actions:          2
--   Shared Components:
--     Logic:
--       Web Services:           1
--     Navigation:
--       Lists:                  1
--       Breadcrumbs:            1
--       NavBar Entries:         1
--     Security:
--       Authentication:         1
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                 3
--         Region:              14
--         Label:                3
--         List:                 5
--         Popup LOV:            1
--         Calendar:             1
--         Button:               2
--         Report:               1
--     Globalization:
--     Reports:
--   Supporting Objects:  Included

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,99026)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'APEX_5')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'F15_D3_Mobile')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'F_99026')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'C289B8B6BFA6C937FAB45E7A65399CFADD588D8394148EEE58DCD775C624D350'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'5.0'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(17878316751979320961)
,p_application_tab_set=>0
,p_logo_image=>'TEXT:F15_D3_Mobile'
,p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,'')
,p_flow_version=>'release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_last_updated_by=>'IAN.D@LIVE.COM'
,p_last_upd_yyyymmddhh24miss=>'20151122212823'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(17878287999809320936)
,p_name=>'Mobile Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(17878317677081320966)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Application Information'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(17955444900821867411)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Manufacturer Overview'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'5,6,7'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18146637147594261326)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Manufacturer Detail'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18147739562841393325)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Ford'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(18146637147594261326)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18148409591361284847)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Chevrolet'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(18146637147594261326)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'8'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18149667935013523283)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Toyota'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(18146637147594261326)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18150715994444410105)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Jeep'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(18146637147594261326)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18150733572232411361)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'GMC'
,p_list_item_link_target=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(18146637147594261326)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18150888368618581754)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Hyundai'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(18146637147594261326)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18150880372536416397)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Nissan'
,p_list_item_link_target=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(18146637147594261326)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18150881316403417476)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Honda'
,p_list_item_link_target=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(18146637147594261326)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18150885629451418611)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>'Dodge'
,p_list_item_link_target=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(18146637147594261326)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/files
begin
null;
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(17878287681565320936)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(17878287746189320936)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(17878287889375320936)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/shared_components/security/authorizations
begin
null;
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
wwv_flow_api.create_icon_bar_item(
 p_id=>wwv_flow_api.id(17878316640517320961)
,p_icon_sequence=>200
,p_icon_subtext=>'Log Out'
,p_icon_target=>'&LOGOUT_URL.'
,p_icon_image_alt=>'Log Out'
,p_icon_height=>32
,p_icon_width=>32
,p_icon_height2=>24
,p_icon_width2=>24
,p_nav_entry_is_feedback_yn=>'N'
,p_cell_colspan=>1
);
end;
/
prompt --application/shared_components/logic/application_processes
begin
null;
end;
/
prompt --application/shared_components/logic/application_items
begin
null;
end;
/
prompt --application/shared_components/logic/application_computations
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs
begin
null;
end;
/
prompt --application/shared_components/navigation/trees
begin
null;
end;
/
prompt --application/pages/page_groups
begin
null;
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(17878316868572320962)
,p_name=>' Breadcrumb'
);
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(17878308030446320937)
,p_theme_id=>51
,p_name=>'Dialog'
,p_is_popup=>true
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE.">',
'',
'<head>',
'',
'  <meta charset="utf-8" />',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_STYLE_CSS#',
'  #THEME_CSS#',
'  #APPLICATION_CSS#',
'  #APEX_JAVASCRIPT#',
'  #APPLICATION_JAVASCRIPT#',
'  #HEAD#',
'</head>',
'<body #ONLOAD#>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#PAGE_STATIC_ID#" data-dialog="true" data-role="page" data-close-btn="right" aria-label="#TITLE#" data-apex-page-transition="#PAGE_TRANSITION#" data-apex-popup-transition="#POPUP_TRANSITION#" data-theme="a">',
' <div data-role="header" class="ui-header ui-bar-c">',
'  <h1>#TITLE#</h1>',
' </div>',
'#TEMPLATE_CSS#',
'#PAGE_CSS#',
'#FORM_OPEN#',
'',
'<div data-role="content" data-theme="a">',
'  <div id="messages">',
'    #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  </div>',
'  #BODY#',
'</div><!-- /content -->',
'#FORM_CLOSE#',
'#THEME_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</div><!-- /page -->',
''))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="ui-bar ui-bar-d success" id="success-message">',
'  <h4 style="display:inline-block;margin-top:5px;">#SUCCESS_MESSAGE#</h4>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="ui-bar ui-bar-b notification" id="notification-message">',
'  <h4 style="display:inline-block; margin-top:5px;">#MESSAGE#</h4>',
'</div>'))
,p_theme_class_id=>4
,p_grid_type=>'VARIABLE'
,p_grid_max_columns=>5
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>false
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'<div class="ui-grid-#USED_COLUMNS_ALPHA_MINUS#">#ROWS#</div>'
,p_grid_row_template=>'#COLUMNS#'
,p_grid_column_template=>'<div class="ui-block-#COLUMN_ALPHA#">#CONTENT#</div>'
,p_grid_javascript_debug_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex.jQuery(document).on("apex-devbar-grid-debug-on", function(){',
'    apex.jQuery(".apex-grid-debug > [class*=''ui-block-'']").addClass("ui-bar-e"); });',
'',
'apex.jQuery(document).on("apex-devbar-grid-debug-off", function(){',
'    apex.jQuery(".apex-grid-debug > [class*=''ui-block-'']").removeClass("ui-bar-e"); });',
''))
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_width=>'92.5%'
,p_dialog_max_width=>'500px'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>3944623128197965030
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(17878308191327320939)
,p_theme_id=>51
,p_name=>'Page'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE.">',
'',
'<head>',
'',
'  <meta charset="utf-8" />',
'  <meta name="apple-mobile-web-app-capable" content="yes">',
'  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_STYLE_CSS#',
'  #THEME_CSS#',
'  #APPLICATION_CSS#',
'  #APEX_JAVASCRIPT#',
'  #THEME_JAVASCRIPT#',
'  #APPLICATION_JAVASCRIPT#',
'  #HEAD#',
'</head>',
'<body #ONLOAD#>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#PAGE_STATIC_ID#" data-role="page" data-apex-page-transition="#PAGE_TRANSITION#" data-apex-popup-transition="#POPUP_TRANSITION#" data-theme="a" data-url="#REQUESTED_URL#" class="ui-responsive-panel" >',
'#TEMPLATE_CSS#',
'#PAGE_CSS#',
'#FORM_OPEN#',
'',
'#REGION_POSITION_01#',
'',
'<div data-role="panel" id="menupanel"  class="jqm-navmenu-panel" data-position="left" data-display="overlay">',
'    #SIDE_GLOBAL_NAVIGATION_LIST#',
'</div>    ',
'',
'<div data-role="content" data-theme="a">',
'  <div id="messages">',
'    #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  </div>',
'  #BODY#',
'</div>',
'',
'#REGION_POSITION_08#',
'',
'#FORM_CLOSE#',
'#TEMPLATE_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="ui-bar ui-bar-d success" style="margin-bottom:20px;" id="success-message">',
'  <h4 style="display:inline-block;margin-top:5px;">#SUCCESS_MESSAGE#</h4>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="ui-bar ui-bar-b notification" id="notification-message">',
'  <h4 style="display:inline-block; margin-top:5px;">#MESSAGE#</h4>',
'</div>'))
,p_theme_class_id=>17
,p_grid_type=>'VARIABLE'
,p_grid_max_columns=>5
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>false
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'<div class="ui-grid-#USED_COLUMNS_ALPHA_MINUS# apex-grid-debug">#ROWS#</div>'
,p_grid_row_template=>'#COLUMNS#'
,p_grid_column_template=>'<div class="ui-block-#COLUMN_ALPHA#">#CONTENT#</div>'
,p_grid_javascript_debug_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex.jQuery(document).on("apex-devbar-grid-debug-on", function(){',
'    apex.jQuery(".apex-grid-debug > [class*=''ui-block-'']").addClass("ui-bar-e"); });',
'',
'apex.jQuery(document).on("apex-devbar-grid-debug-off", function(){',
'    apex.jQuery(".apex-grid-debug > [class*=''ui-block-'']").removeClass("ui-bar-e"); });',
''))
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>3773948923360905623
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(17878308267368320940)
,p_page_template_id=>wwv_flow_api.id(17878308191327320939)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(17878308346639320940)
,p_page_template_id=>wwv_flow_api.id(17878308191327320939)
,p_name=>'Header Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(17878308490922320940)
,p_page_template_id=>wwv_flow_api.id(17878308191327320939)
,p_name=>'Footer Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(17878308970883320942)
,p_theme_id=>51
,p_name=>'Popup'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE.">',
'',
'<head>',
'',
'  <meta charset="utf-8" />',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_STYLE_CSS#',
'  #THEME_CSS#    ',
'  #APPLICATION_CSS#',
'  #APEX_JAVASCRIPT#',
'  #THEME_JAVASCRIPT#',
'  #APPLICATION_JAVASCRIPT#',
'  #HEAD#',
'</head>',
'<body #ONLOAD#>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#PAGE_STATIC_ID#" data-role="page" data-apex-page-transition="#PAGE_TRANSITION#" data-apex-popup-transition="#POPUP_TRANSITION#" data-theme="a">',
'#TEMPLATE_CSS#',
'#PAGE_CSS#',
'#FORM_OPEN#',
'',
'<div data-role="content" data-theme="a">',
'  <div id="messages">',
'    #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  </div>',
'  #BODY#',
'</div><!-- /content -->',
'#FORM_CLOSE#',
'#TEMPLATE_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</div><!-- /page -->',
''))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="ui-bar ui-bar-d success" id="success-message">',
'  <h4 style="display:inline-block;margin-top:5px;">#SUCCESS_MESSAGE#</h4>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="ui-bar ui-bar-b notification" id="notification-message">',
'  <h4 style="display:inline-block; margin-top:5px;">#MESSAGE#</h4>',
'</div>'))
,p_theme_class_id=>17
,p_grid_type=>'VARIABLE'
,p_grid_max_columns=>5
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>false
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'<div class="ui-grid-#USED_COLUMNS_ALPHA_MINUS#">#ROWS#</div>'
,p_grid_row_template=>'#COLUMNS#'
,p_grid_column_template=>'<div class="ui-block-#COLUMN_ALPHA#">#CONTENT#</div>'
,p_grid_javascript_debug_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex.jQuery(document).on("apex-devbar-grid-debug-on", function(){',
'    apex.jQuery(".apex-grid-debug > [class*=''ui-block-'']").addClass("ui-bar-e"); });',
'',
'apex.jQuery(document).on("apex-devbar-grid-debug-off", function(){',
'    apex.jQuery(".apex-grid-debug > [class*=''ui-block-'']").removeClass("ui-bar-e"); });',
''))
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>3773982230016967788
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(17878311386660320948)
,p_template_name=>'Icon Button'
,p_template=>'<button id="#BUTTON_ID#" type="button" data-inline="true" onclick="#JAVASCRIPT#" class="ui-btn #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#>#LABEL#</button>'
,p_hot_template=>'<button id="#BUTTON_ID#" type="button" data-inline="true" onclick="#JAVASCRIPT#" class="ui-btn ui-btn-b #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#>#LABEL#</button>'
,p_reference_id=>3769112915850328396
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_default_template_options=>'ui-btn-inline:ui-corner-all'
,p_preset_template_options=>'ui-btn-icon-notext'
,p_theme_id=>51
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(17878315588743320952)
,p_template_name=>'Standard Button'
,p_template=>'<button id="#BUTTON_ID#" type="button" data-inline="true" onclick="#JAVASCRIPT#" class="ui-btn #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#>#LABEL#</button>'
,p_hot_template=>'<button id="#BUTTON_ID#" type="button" data-inline="true" onclick="#JAVASCRIPT#" class="ui-btn ui-btn-b #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#>#LABEL#</button>'
,p_reference_id=>3773985424233098554
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_default_template_options=>'ui-btn-inline:ui-corner-all'
,p_theme_id=>51
);
end;
/
prompt --application/shared_components/user_interface/templates/region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(17878309048778320943)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-role="controlgroup" data-type="horizontal" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'#CLOSE#',
'#DELETE#',
'#CREATE#',
'#EDIT#',
'#CHANGE#',
'#BODY#',
'</div>'))
,p_page_plug_template_name=>'Button Group (Horizontal)'
,p_theme_id=>51
,p_theme_class_id=>17
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3773986716277171983
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(17878309129840320943)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-role="controlgroup" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'#CLOSE#',
'#DELETE#',
'#CREATE#',
'#EDIT#',
'#CHANGE#',
'#BODY#',
'</div>'))
,p_page_plug_template_name=>'Button Group (Vertical)'
,p_theme_id=>51
,p_theme_class_id=>17
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3773986516015153022
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(17878309221201320943)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-role="collapsible" #REGION_CSS_CLASSES# #REGION_ATTRIBUTES#>',
'<h3>#TITLE#</h3>',
'#BODY#',
'</div>'))
,p_page_plug_template_name=>'Collapsible (Closed)'
,p_theme_id=>51
,p_theme_class_id=>1
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3802613893727675064
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(17878309316678320944)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-role="collapsible" data-collapsed="false" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'<h3>#TITLE#</h3>',
'#BODY#',
'</div>'))
,p_page_plug_template_name=>'Collapsible (Open)'
,p_theme_id=>51
,p_theme_class_id=>1
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3773989519618239167
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(17878309493602320944)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-role="collapsible-set" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'#SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Collapsible Set'
,p_theme_id=>51
,p_theme_class_id=>1
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3773995014648303985
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(17878309530318320944)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-role="footer" data-theme="b" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'  #CHANGE#',
'  #BODY#',
'</div> <!-- /footer -->'))
,p_page_plug_template_name=>'Footer Toolbar (Displays at Bottom of Page)'
,p_theme_id=>51
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3773960018627216969
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(17878309658606320944)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-id="#REGION_STATIC_ID#" data-role="footer" data-theme="b" data-position="fixed" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'  #CHANGE#',
'  #BODY#',
'</div> <!-- /footer -->'))
,p_page_plug_template_name=>'Footer Toolbar (Fixed)'
,p_theme_id=>51
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3773956337432111625
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(17878309732372320944)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-id="#REGION_STATIC_ID#" data-role="footer" data-theme="b" data-position="fixed" data-fullscreen="true" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'  #CHANGE#',
'  #BODY#',
'</div> <!-- /footer -->'))
,p_page_plug_template_name=>'Footer Toolbar (Fullscreen)'
,p_theme_id=>51
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3773955815682111625
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(17878309829069320944)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-id="#REGION_STATIC_ID#" data-role="header" data-theme="a" data-position="fixed" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'  #PREVIOUS#',
'  <h1>#PAGE_TITLE#</h1>',
'  #NEXT#',
'  #BODY#',
'</div> <!-- /header -->'))
,p_page_plug_template_name=>'Header Toolbar (Fixed)'
,p_theme_id=>51
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3773957032569111626
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(17878309975372320944)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-id="#REGION_STATIC_ID#" data-role="header" data-theme="a" data-position="fixed" data-fullscreen="true" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'  #PREVIOUS#',
'  <h1>#TITLE#</h1>',
'  #NEXT#',
'  #BODY#',
'</div> <!-- /header -->'))
,p_page_plug_template_name=>'Header Toolbar (Fullscreen)'
,p_theme_id=>51
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3773956714688111626
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(17878310004718320945)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div data-role="panel" id="#REGION_STATIC_ID#" data-position="right" data-display="overlay" class="#REGION_CSS_CLASSES#">',
'#BODY#',
'#SUB_REGIONS#',
'#CLOSE#',
'#DELETE#',
'#CREATE#',
'#EDIT#',
'#CHANGE#',
'</div>  '))
,p_page_plug_template_name=>'Panel'
,p_theme_id=>51
,p_theme_class_id=>2
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4376395493293226388
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(17878310161647320945)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#">',
'#BODY#',
'#SUB_REGIONS#',
'#CLOSE#',
'#DELETE#',
'#CREATE#',
'#EDIT#',
'#CHANGE#',
'#PREVIOUS#',
'#NEXT#    ',
'</div>'))
,p_page_plug_template_name=>'Plain (No Title)'
,p_theme_id=>51
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3773970912843347834
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(17878310215219320945)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" class="ui-collapsible #REGION_CSS_CLASSES#" data-theme="b" #REGION_ATTRIBUTES#>',
'  <h3 class="ui-collapsible-heading ui-btn ui-corner-top ui-btn-up-a">',
'    <span class="ui-btn-inner ui-corner-top ui-corner-bottom">',
'      <span lass="ui-btn-text">#TITLE#</span>',
'    </span>',
'  </h3>',
'  <div class="ui-collapsible-content ui-body-c ui-corner-bottom">',
'    #BODY#',
'    #SUB_REGIONS#',
'    #EDIT#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Region (With Title Bar)'
,p_theme_id=>51
,p_theme_class_id=>8
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3774008426020553267
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(17878310390682320945)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" class="#REGION_CSS_CLASSES#" data-theme="b" #REGION_ATTRIBUTES#>',
'<h3>#TITLE#</h3>',
'#BODY#',
'#SUB_REGIONS#',
'#EDIT#',
'</div>'))
,p_page_plug_template_name=>'Region (With Title)'
,p_theme_id=>51
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3774032731297886006
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(17878310560079320946)
,p_list_template_current=>'<a href="#LINK#" rel="external" data-role="button" data-icon="#A01#">#TEXT_ESC_SC#</a>'
,p_list_template_noncurrent=>'<a href="#LINK#" rel="external" data-role="button" data-icon="#A01#">#TEXT_ESC_SC#</a>'
,p_list_template_name=>'Button Control Group'
,p_theme_id=>51
,p_theme_class_id=>9
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="navgroup">',
'   <div data-role="controlgroup" data-type="horizontal">'))
,p_list_template_after_rows=>'</div></div>'
,p_reference_id=>4142824253118274072
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(17878310659396320946)
,p_list_template_current=>'<li data-theme="b"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'List View'
,p_theme_id=>51
,p_theme_class_id=>9
,p_list_template_before_rows=>'<ul data-role="listview">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li data-theme="b"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-theme="b">',
'<a href="#LINK#">#TEXT_ESC_SC#</a>',
'#SUB_LISTS#',
'</li>'))
,p_item_templ_noncurr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li>',
'<a href="#LINK#">#TEXT_ESC_SC#</a>',
'#SUB_LISTS#',
'</li>'))
,p_sub_templ_curr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-theme="b">',
'<a href="#LINK#">#TEXT_ESC_SC#</a>',
'#SUB_LISTS#',
'</li>'))
,p_sub_templ_noncurr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li>',
'<a href="#LINK#">#TEXT_ESC_SC#</a>',
'#SUB_LISTS#',
'</li>'))
,p_reference_id=>3776865227797444118
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(17878310752105320947)
,p_list_template_current=>'<li data-theme="b"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'List View (Inset)'
,p_theme_id=>51
,p_theme_class_id=>10
,p_list_template_before_rows=>'<ul data-role="listview" data-inset="true">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul data-inset="true">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li data-theme="b"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-theme="b">',
'<a href="#LINK#">#TEXT_ESC_SC#</a>',
'#SUB_LISTS#',
'</li>'))
,p_item_templ_noncurr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li>',
'<a href="#LINK#">#TEXT_ESC_SC#</a>',
'#SUB_LISTS#',
'</li>'))
,p_sub_templ_curr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-theme="b">',
'<a href="#LINK#">#TEXT_ESC_SC#</a>',
'#SUB_LISTS#',
'</li>'))
,p_sub_templ_noncurr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li>',
'<a href="#LINK#">#TEXT_ESC_SC#</a>',
'#SUB_LISTS#',
'</li>'))
,p_reference_id=>3935648678734663305
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(17878310873276320947)
,p_list_template_current=>'<li><a href="#LINK#" class="ui-btn-active" data-transition="flow" data-icon="#IMAGE#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#" data-transition="flow" data-icon="#IMAGE#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Navigation Bar'
,p_theme_id=>51
,p_theme_class_id=>11
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div data-role="navbar">',
'  <ul>',
''))
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  </ul>',
'</div><!-- /navbar -->'))
,p_reference_id=>3773961435821288174
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(17878310947497320947)
,p_list_template_current=>'<li data-theme="b"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Navigation Menu'
,p_inline_css=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'.jqm-navmenu-panel .ui-listview > li .ui-collapsible-heading {',
'    margin: 0;',
'}',
'.jqm-navmenu-panel .ui-collapsible.ui-li-static {',
'    border: medium none !important;',
'    padding: 0;',
'}',
'.jqm-navmenu-panel .ui-collapsible + li > .ui-btn, .jqm-navmenu-panel .ui-collapsible + .ui-collapsible > .ui-collapsible-heading > .ui-btn, .jqm-navmenu-panel .ui-panel-inner > .ui-listview > li.ui-first-child .ui-btn {',
'    border-top: medium none !important;',
'}',
'.jqm-navmenu-panel .ui-listview .ui-listview .ui-btn {',
'    color: #999;',
'    padding-left: 1.5em;',
'}',
'.jqm-navmenu-panel .ui-listview .ui-listview .ui-btn.ui-btn-active {',
'    color: #fff;',
'}',
'.jqm-navmenu-panel .ui-btn:after {',
'    opacity: 0.4;',
'}',
'.jqm-demos .jqm-navmenu-panel.jqm-panel-page-nav {',
'    display: none;',
'    left: 12px;',
'    position: absolute;',
'    top: 178px;',
'}',
'.jqm-demos .jqm-navmenu-panel.jqm-panel-page-nav ul li:first-child a {',
'    border-top: medium none;',
'}',
'',
''))
,p_theme_id=>51
,p_theme_class_id=>9
,p_list_template_before_rows=>'<ul data-role="listview">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul data-role="listview" data-theme="b">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li data-theme="b"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-role="collapsible" data-iconpos="right" data-inset="false">',
'    <h2>#TEXT_ESC_SC#</h2>',
'    <ul data-role="listview" data-theme="b">',
'        #SUB_LISTS#',
'    </ul>',
'</li>'))
,p_item_templ_noncurr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-role="collapsible" data-iconpos="right" data-inset="false">',
'    <h2>#TEXT_ESC_SC#</h2>',
'    #SUB_LISTS#',
'</li>'))
,p_sub_templ_curr_w_child=>'<li data-theme="b"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li data-theme="b"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_reference_id=>5052261073199403386
);
end;
/
prompt --application/shared_components/user_interface/templates/report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(17878310433975320945)
,p_row_template_name=>'Standard Report'
,p_row_template1=>'<div class="list-view-cell" style="width:#COLUMN_WIDTH_VAL#%">#COLUMN_VALUE#</div>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">',
'<ul data-role="listview">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<li data-role="list-divider">'
,p_column_heading_template=>'<div class="list-view-cell" id="#COLUMN_HEADER_NAME#" style="width:#COLUMN_WIDTH_VAL#%">#COLUMN_HEADER#</div>'
,p_after_column_heading=>'</li>'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" data-role="button" data-icon="arrow-r" data-iconpos="right" data-transition="slide">#PAGINATION_NEXT#</a>'
,p_previous_page_template=>'<a href="#LINK#" data-role="button" data-icon="arrow-l" data-iconpos="left" data-transition="slide" data-direction="reverse">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" data-role="button" data-icon="arrow-r" data-iconpos="right" data-transition="slide">#PAGINATION_NEXT_SET#</a>'
,p_previous_set_template=>'<a href="#LINK#" data-role="button" data-icon="arrow-l" data-iconpos="left" data-transition="slide" data-direction="reverse">#PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_checked=>'#ccc'
,p_theme_id=>51
,p_theme_class_id=>4
,p_reference_id=>3938915966414985025
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(17878310433975320945)
,p_row_template_before_first=>'<li>'
,p_row_template_after_last=>'</li>'
);
exception when others then null;
end;
end;
/
prompt --application/shared_components/user_interface/templates/label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(17878311027575320948)
,p_template_name=>'No Label (For Screenreaders)'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#">'
,p_template_body2=>'</label>'
,p_before_item=>'<div class="ui-hide-label" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_on_error_before_label=>' '
,p_on_error_after_label=>' '
,p_theme_id=>51
,p_theme_class_id=>13
,p_reference_id=>3774000536044404829
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(17878311135339320948)
,p_template_name=>'Optional'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#">'
,p_template_body2=>'</label>'
,p_before_item=>'<div id="#CURRENT_ITEM_CONTAINER_ID#" class="ui-field-contain">'
,p_after_item=>'</div>'
,p_on_error_before_label=>' '
,p_on_error_after_label=>' '
,p_theme_id=>51
,p_theme_class_id=>3
,p_reference_id=>3773999522622381968
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(17878311261333320948)
,p_template_name=>'Required'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#">'
,p_template_body2=>'<span class="a-Icon icon-asterisk"></span></label>'
,p_before_item=>'<div id="#CURRENT_ITEM_CONTAINER_ID#" class="ui-field-contain">'
,p_after_item=>'</div>'
,p_on_error_before_label=>' '
,p_on_error_after_label=>' '
,p_theme_id=>51
,p_theme_class_id=>4
,p_reference_id=>3773952434061913595
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb
begin
null;
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(17878315988708320953)
,p_popup_icon=>'#IMAGE_PREFIX#list.gif'
,p_popup_icon_attr=>'width=13 height=13 alt="#LIST_OF_VALUES#" title="#LIST_OF_VALUES#"'
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#APEX_JAVASCRIPT#',
'<link rel=stylesheet href=#IMAGE_PREFIX#platform2.css type=text/css>',
'#THEME_CSS#',
'</head>'))
,p_page_body_attr=>'bgcolor=white OnLoad=first_field()'
,p_before_field_text=>' '
,p_page_heading_text=>'<link rel=stylesheet href=#IMAGE_PREFIX#platform2.css type=text/css><style>a:link { color:#336699; text-decoration:none; padding:2px;} a:visited { color:#336699; text-decoration:none;} a:hover { color:red; text-decoration:underline;} body { font-fami'
||'ly:arial; background-color:#ffffff;} </style>'
,p_page_footer_text=>'</center></td></tr></table>'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_find_button_text=>'Search'
,p_close_button_text=>'Close'
,p_next_button_text=>'Next'
,p_prev_button_text=>'Previous'
,p_after_field_text=>'</div><br />'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'400'
,p_height=>'450'
,p_result_row_x_of_y=>'Row(s) #FIRST_ROW# - #LAST_ROW#'
,p_result_rows_per_pg=>10
,p_theme_id=>51
,p_theme_class_id=>1
,p_reference_id=>3773970616521339369
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(17878315817774320952)
,p_cal_template_name=>'Basic Calendar'
,p_day_of_week_format=>'<th scope="col" class="m-DayOfWeek">#IDY#</th>'
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table summary="#CALENDAR_TITLE# #IMONTH# #YYYY#" class="m-Calendar" id="calendar_month_#REGION_STATIC_ID#" data-enhance=false>',
'<tr><th scope="colgroup" class="m-MonthTitle" colspan="7" >#IMONTH# #YYYY#</th></tr>',
''))
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<tr><td colspan="7">',
'<div id="calendar_day_details_#REGION_STATIC_ID#"></div>',
'</td>',
'</tr>',
'</table>',
'<script>',
'apex.jQuery( "##PAGE_STATIC_ID#" ).on( "pageinit", function() {',
'',
'    // Initialize calendar data as list view as soon as that section has been refreshed',
'    // Use Swipe Left and Right to go to the next or previous month',
'    apex.jQuery( "##REGION_STATIC_ID#", apex.gPageContext$ )',
'        .on( "apexafterrefresh", function() {',
'            apex.jQuery( "#calendar_month_#REGION_STATIC_ID#", apex.gPageContext$ )',
'                .find( "[data-role=''listview'']")',
'                .listview(); })',
'        .on( "swipeleft", function() {',
'            apex.widget.calendar.ajax_calendar(''S'', ''next''); } )',
'        .on( "swiperight", function() {',
'            apex.widget.calendar.ajax_calendar(''S'', ''previous''); } );',
'',
'    // Load calendar data of date if it''s tapped',
'    apex.jQuery( "##REGION_STATIC_ID#", apex.gPageContext$ ).on( "tap", "#calendar_month_#REGION_STATIC_ID# td[class*=m-]", function () {',
'        var lDate     = apex.jQuery( this ).data( "date" ),',
'            lDetails$ = apex.jQuery( "#calendar_day_details_#REGION_STATIC_ID#", apex.gPageContext$ );',
'        apex.jQuery(".apex-calendar-today-has-data")',
'            .addClass(''apex-calendar-has-data'')',
'            .removeClass("apex-calendar-today-has-data");',
'        apex.jQuery( ".m-Today" )',
'            .addClass("m-Day")',
'            .removeClass( "m-Today" );',
'        apex.jQuery( this ).addClass( "m-Today" );',
'',
'        apex.widget.calendar.getDayData( "#REGION_STATIC_ID#", lDate, {',
'            clear: function() {',
'                lDetails$.empty();',
'            },',
'            success: function( pData ) {',
'                lDetails$.html( pData );',
'            }',
'        });',
'    });',
'',
'    // New calendar entries can be added with tab and hold',
'    apex.jQuery( "##REGION_STATIC_ID#", apex.gPageContext$ ).on( "taphold", "#calendar_month_#REGION_STATIC_ID# td[class*=m-]", function (e) {',
'       apex.widget.calendar.ajaxAddData(e);',
'    });',
'',
'    // Get the data of the current day as soon as the page gets displayed',
'    apex.jQuery( "##PAGE_STATIC_ID#" ).on( "pageshow", function() {',
'        var lDetails$ = apex.jQuery( "#calendar_day_details_#REGION_STATIC_ID#", apex.gPageContext$ );',
'        apex.jQuery( ".m-Today", apex.gPageContext$ )',
'            .addClass( "m-Day" )',
'            .removeClass( "m-Today" );',
'        apex.jQuery( "#calendar_month_#REGION_STATIC_ID#", apex.gPageContext$ )',
'            .find( "td[data-date=#CURRENT_DATE#]" )',
'            .addClass( "m-Today" );',
'        apex.widget.calendar.getDayData( "#REGION_STATIC_ID#", "#CURRENT_DATE#", {',
'            clear: function() {',
'                lDetails$.empty();',
'            },',
'            success: function( pData ) {',
'                lDetails$.html( pData );',
'            }',
'        });',
'    });',
'',
'});',
'</script>'))
,p_day_title_format=>'<div class="content-primary" class="m-DayTitle">#DD#</div>'
,p_day_open_format=>'<td class="m-Day #HAS_DATA#" data-date="#CANONICAL_DATE#">#TITLE_FORMAT#'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="m-Today #HAS_DATA#" data-date="#CANONICAL_DATE#">#TITLE_FORMAT#'
,p_weekend_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="content-primary" class="m-WeekendDayTitle">#DD#</div>',
''))
,p_weekend_open_format=>'<td class="m-WeekendDay #HAS_DATA#"  data-date="#CANONICAL_DATE#">#TITLE_FORMAT#'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<div class="content-primary" class="m-NonDayTitle">#DD#</div>'
,p_nonday_open_format=>'<td class="m-NonDay"  data-date="#CANONICAL_DATE#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_weekly_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="m-WeekCalendar">',
'	<tr>',
'        <th scope="colgroup" class="m-monthTitle" colspan="7" >#WTITLE#</th>',
'	</tr>'))
,p_weekly_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th scope="col" class="m-DayOfWeek" >#IDY# #MM#/#DD#</th>',
''))
,p_weekly_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'<script>',
'    // register a delegated event on the table listening for all taphold in TD''s',
'    apex.jQuery( "##REGION_STATIC_ID#" ).on( "taphold", "td[class^=m-]", function (e) {',
'        apex.widget.calendar.ajaxAddData(e);',
'    });',
'</script>'))
,p_weekly_day_open_format=>'<td class="m-Day">'
,p_weekly_day_close_format=>'</td>'
,p_weekly_today_open_format=>'<td class="m-Today">'
,p_weekly_weekend_open_format=>'<td class="m-NonDay">'
,p_weekly_weekend_close_format=>'</td>'
,p_weekly_time_open_format=>'<th scope="row" class="m-hour">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr rowspan="2">'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" class="m-DayOfWeek">#IDAY# #DD# #IMONTH# #YYYY#</th>'
,p_daily_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table summary="#CALENDAR_TITLE# #START_DL#" class="m-DayCalendar"><tr>',
''))
,p_daily_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'<script>',
'    // register a delegated event on the table listening for all taphold in TD''s',
'    apex.jQuery( "##REGION_STATIC_ID#" ).on( "taphold", "td[class^=m-]", function (e) {',
'        apex.widget.calendar.ajaxAddData(e);',
'    });',
'</script>'))
,p_daily_day_open_format=>'<td class="m-Day">'
,p_daily_day_close_format=>'</td>'
,p_daily_today_open_format=>'<td class="m-ToDay">'
,p_daily_time_open_format=>'<th scope="row" class="m-hour">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr rowspan="2" >'
,p_daily_hour_close_format=>'</tr>'
,p_agenda_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul data-role="listview">',
'#DAYS#',
'</ul>',
''))
,p_agenda_past_day_format=>'<li data-role="list-divider" data-theme="a">#IDAY# #IMONTH# #DD# #YYYY#</li>'
,p_agenda_today_day_format=>'<li data-role="list-divider" data-theme="b">#IDAY# #IMONTH# #DD# #YYYY#</li>'
,p_agenda_future_day_format=>'<li  data-role="list-divider" >#IDAY# #IMONTH# #DD# #YYYY#</li>'
,p_agenda_past_entry_format=>'<li >#DATA#<p class="ui-li-aside">#TIME#</p></li>'
,p_agenda_today_entry_format=>'<li >#DATA#<p class="ui-li-aside">#TIME#</p></li>'
,p_agenda_future_entry_format=>'<li >#DATA#<p class="ui-li-aside">#TIME#</p></li>'
,p_month_data_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul id="listview_#REGION_STATIC_ID#" data-role="listview" data-inset="true" data-theme="a">#DAYS#</ul>',
''))
,p_month_data_entry_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li align="left" >#LINK##DATA#<p class="ui-li-aside">#TIME#</p></li>',
' '))
,p_theme_id=>51
,p_theme_class_id=>1
,p_reference_id=>3894606461977238251
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(17878316409482320955)
,p_theme_id=>51
,p_theme_name=>'Mobile'
,p_ui_type_name=>'JQM_SMARTPHONE'
,p_navigation_type=>'L'
,p_nav_bar_type=>'NAVBAR'
,p_reference_id=>3773947624214896911
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(17878308191327320939)
,p_default_dialog_template=>wwv_flow_api.id(17878308030446320937)
,p_error_template=>wwv_flow_api.id(17878308191327320939)
,p_printer_friendly_template=>wwv_flow_api.id(17878308191327320939)
,p_login_template=>wwv_flow_api.id(17878308191327320939)
,p_default_button_template=>wwv_flow_api.id(17878315588743320952)
,p_default_region_template=>wwv_flow_api.id(17878310161647320945)
,p_default_chart_template=>wwv_flow_api.id(17878310161647320945)
,p_default_form_template=>wwv_flow_api.id(17878310161647320945)
,p_default_reportr_template=>wwv_flow_api.id(17878310390682320945)
,p_default_tabform_template=>wwv_flow_api.id(17878310161647320945)
,p_default_wizard_template=>wwv_flow_api.id(17878310161647320945)
,p_default_irr_template=>wwv_flow_api.id(17878310161647320945)
,p_default_report_template=>wwv_flow_api.id(17878310433975320945)
,p_default_label_template=>wwv_flow_api.id(17878311135339320948)
,p_default_calendar_template=>wwv_flow_api.id(17878315817774320952)
,p_default_list_template=>wwv_flow_api.id(17878310752105320947)
,p_default_nav_list_template=>wwv_flow_api.id(17878310659396320946)
,p_default_top_nav_list_temp=>wwv_flow_api.id(17878310659396320946)
,p_default_side_nav_list_temp=>wwv_flow_api.id(17878310947497320947)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(17878309048778320943)
,p_default_dialogr_template=>wwv_flow_api.id(17878310161647320945)
,p_default_option_label=>wwv_flow_api.id(17878311135339320948)
,p_default_header_template=>wwv_flow_api.id(17878309829069320944)
,p_default_footer_template=>wwv_flow_api.id(17878309658606320944)
,p_default_required_label=>wwv_flow_api.id(17878311261333320948)
,p_default_page_transition=>'SLIDE'
,p_default_popup_transition=>'POP'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(51),'#IMAGE_PREFIX#themes/theme_51/')
,p_css_file_urls=>'#THEME_IMAGES#css/5_0.css'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(17878316059620320954)
,p_theme_id=>51
,p_name=>'Blue'
,p_css_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_51/css/blue/theme_style_blue.min.css',
'#IMAGE_PREFIX#themes/theme_51/css/blue/jquery.mobile.icons.min.css'))
,p_is_current=>false
,p_theme_roller_read_only=>false
,p_reference_id=>3558019537230577370
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(17878316189454320954)
,p_theme_id=>51
,p_name=>'Dark'
,p_css_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_51/css/dark/theme_style_dark.min.css',
'#IMAGE_PREFIX#themes/theme_51/css/dark/jquery.mobile.icons.min.css'))
,p_is_current=>true
,p_theme_roller_read_only=>false
,p_reference_id=>3806542953350945495
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(17878316207595320954)
,p_theme_id=>51
,p_name=>'Default'
,p_css_file_urls=>'#IMAGE_PREFIX#themes/theme_51/css/default/theme_style_default.css'
,p_is_current=>false
,p_theme_roller_read_only=>false
,p_reference_id=>3768671220784242708
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(17878316341641320954)
,p_theme_id=>51
,p_name=>'Red'
,p_css_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_51/css/red/theme_style_red.min.css',
'#IMAGE_PREFIX#themes/theme_51/css/red/jquery.mobile.icons.min.css'))
,p_is_current=>false
,p_theme_roller_read_only=>false
,p_reference_id=>3558019537227576001
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(17878308584010320940)
,p_theme_id=>51
,p_name=>'MENU_PANEL_OPTIONS'
,p_display_name=>'Menu Panel Options'
,p_display_sequence=>1
,p_template_types=>'PAGE'
,p_help_text=>'The relationship of the menu panel to the page contents. Can either push the page over ("reveal"), re-flow the content to fit the panel content as a column ("push"), or sit over the content ("overlay").'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(17878311425499320949)
,p_theme_id=>51
,p_name=>'ICON_BUTTON'
,p_display_name=>'Icon Button'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(17878311931680320949)
,p_theme_id=>51
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(17878308632587320941)
,p_theme_id=>51
,p_name=>'OVERLAY'
,p_display_name=>'Overlay'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(17878308191327320939)
,p_css_classes=>'overlay'
,p_group_id=>wwv_flow_api.id(17878308584010320940)
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(17878308792271320942)
,p_theme_id=>51
,p_name=>'PUSH'
,p_display_name=>'Push'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(17878308191327320939)
,p_css_classes=>'push'
,p_group_id=>wwv_flow_api.id(17878308584010320940)
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(17878308878816320942)
,p_theme_id=>51
,p_name=>'REVEAL'
,p_display_name=>'Reveal'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(17878308191327320939)
,p_css_classes=>'reveal'
,p_group_id=>wwv_flow_api.id(17878308584010320940)
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(17878311598885320949)
,p_theme_id=>51
,p_name=>'ICON_ACTION'
,p_display_name=>'Action'
,p_display_sequence=>100
,p_button_template_id=>wwv_flow_api.id(17878311386660320948)
,p_css_classes=>'ui-icon-action'
,p_group_id=>wwv_flow_api.id(17878311425499320949)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(17878311602939320949)
,p_theme_id=>51
,p_name=>'ICON_ALERT'
,p_display_name=>'Alert'
,p_display_sequence=>110
,p_button_template_id=>wwv_flow_api.id(17878311386660320948)
,p_css_classes=>'ui-icon-alert'
,p_group_id=>wwv_flow_api.id(17878311425499320949)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(17878311797023320949)
,p_theme_id=>51
,p_name=>'ICON_BACK'
,p_display_name=>'Back'
,p_display_sequence=>120
,p_button_template_id=>wwv_flow_api.id(17878311386660320948)
,p_css_classes=>'ui-icon-back'
,p_group_id=>wwv_flow_api.id(17878311425499320949)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(17878311831135320949)
,p_theme_id=>51
,p_name=>'ICON_BARS'
,p_display_name=>'Bars'
,p_display_sequence=>130
,p_button_template_id=>wwv_flow_api.id(17878311386660320948)
,p_css_classes=>'ui-icon-bars'
,p_group_id=>wwv_flow_api.id(17878311425499320949)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(17878312053127320949)
,p_theme_id=>51
,p_name=>'ICON_BOTTOM'
,p_display_name=>'Bottom'
,p_display_sequence=>50
,p_button_template_id=>wwv_flow_api.id(17878311386660320948)
,p_css_classes=>'ui-btn-icon-bottom'
,p_group_id=>wwv_flow_api.id(17878311931680320949)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(17878312191231320949)
,p_theme_id=>51
,p_name=>'ICON_BULLETS'
,p_display_name=>'Bullets'
,p_display_sequence=>140
,p_button_template_id=>wwv_flow_api.id(17878311386660320948)
,p_css_classes=>'ui-icon-bullets'
,p_group_id=>wwv_flow_api.id(17878311425499320949)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(17878312294697320949)
,p_theme_id=>51
,p_name=>'ICON_CALENDAR'
,p_display_name=>'Calendar'
,p_display_sequence=>150
,p_button_template_id=>wwv_flow_api.id(17878311386660320948)
,p_css_classes=>'ui-icon-calendar'
,p_group_id=>wwv_flow_api.id(17878311425499320949)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(17878312380770320949)
,p_theme_id=>51
,p_name=>'ICON_CARAT_DOWN'
,p_display_name=>'Down'
,p_display_sequence=>160
,p_button_template_id=>wwv_flow_api.id(17878311386660320948)
,p_css_classes=>'ui-icon-carat-d'
,p_group_id=>wwv_flow_api.id(17878311425499320949)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(17878312480859320949)
,p_theme_id=>51
,p_name=>'ICON_CARAT_LEFT'
,p_display_name=>'Left'
,p_display_sequence=>170
,p_button_template_id=>wwv_flow_api.id(17878311386660320948)
,p_css_classes=>'ui-icon-carat-l'
,p_group_id=>wwv_flow_api.id(17878311425499320949)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(17878312529376320950)
,p_theme_id=>51
,p_name=>'ICON_CARAT_RIGHT'
,p_display_name=>'Right'
,p_display_sequence=>180
,p_button_template_id=>wwv_flow_api.id(17878311386660320948)
,p_css_classes=>'ui-icon-carat-r'
,p_group_id=>wwv_flow_api.id(17878311425499320949)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(17878312609133320950)
,p_theme_id=>51
,p_name=>'ICON_CARAT_UP'
,p_display_name=>'Up'
,p_display_sequence=>190
,p_button_template_id=>wwv_flow_api.id(17878311386660320948)
,p_css_classes=>'ui-icon-carat-u'
,p_group_id=>wwv_flow_api.id(17878311425499320949)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(17878312760148320950)
,p_theme_id=>51
,p_name=>'ICON_CHECK'
,p_display_name=>'Check'
,p_display_sequence=>210
,p_button_template_id=>wwv_flow_api.id(17878311386660320948)
,p_css_classes=>'ui-icon-check'
,p_group_id=>wwv_flow_api.id(17878311425499320949)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(17878312805960320950)
,p_theme_id=>51
,p_name=>'ICON_CLOCK'
,p_display_name=>'Clock'
,p_display_sequence=>240
,p_button_template_id=>wwv_flow_api.id(17878311386660320948)
,p_css_classes=>'ui-icon-clock'
,p_group_id=>wwv_flow_api.id(17878311425499320949)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(17878312985628320950)
,p_theme_id=>51
,p_name=>'ICON_CLOUD'
,p_display_name=>'Cloud'
,p_display_sequence=>220
,p_button_template_id=>wwv_flow_api.id(17878311386660320948)
,p_css_classes=>'ui-icon-cloud'
,p_group_id=>wwv_flow_api.id(17878311425499320949)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(17878313082623320950)
,p_theme_id=>51
,p_name=>'ICON_COMMENT'
,p_display_name=>'Comment'
,p_display_sequence=>230
,p_button_template_id=>wwv_flow_api.id(17878311386660320948)
,p_css_classes=>'ui-icon-comment'
,p_group_id=>wwv_flow_api.id(17878311425499320949)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(17878313130262320950)
,p_theme_id=>51
,p_name=>'ICON_DELETE'
,p_display_name=>'Delete'
,p_display_sequence=>200
,p_button_template_id=>wwv_flow_api.id(17878311386660320948)
,p_css_classes=>'ui-icon-delete'
,p_group_id=>wwv_flow_api.id(17878311425499320949)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(17878313207753320950)
,p_theme_id=>51
,p_name=>'ICON_EDIT'
,p_display_name=>'Edit'
,p_display_sequence=>250
,p_button_template_id=>wwv_flow_api.id(17878311386660320948)
,p_css_classes=>'ui-icon-edit'
,p_group_id=>wwv_flow_api.id(17878311425499320949)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(17878313347530320950)
,p_theme_id=>51
,p_name=>'ICON_GEAR'
,p_display_name=>'Gear'
,p_display_sequence=>260
,p_button_template_id=>wwv_flow_api.id(17878311386660320948)
,p_css_classes=>'ui-icon-gear'
,p_group_id=>wwv_flow_api.id(17878311425499320949)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(17878313415595320950)
,p_theme_id=>51
,p_name=>'ICON_GRID'
,p_display_name=>'Grid'
,p_display_sequence=>270
,p_button_template_id=>wwv_flow_api.id(17878311386660320948)
,p_css_classes=>'ui-icon-grid'
,p_group_id=>wwv_flow_api.id(17878311425499320949)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(17878313577183320950)
,p_theme_id=>51
,p_name=>'ICON_HOME'
,p_display_name=>'Home'
,p_display_sequence=>280
,p_button_template_id=>wwv_flow_api.id(17878311386660320948)
,p_css_classes=>'ui-icon-home'
,p_group_id=>wwv_flow_api.id(17878311425499320949)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(17878313690543320950)
,p_theme_id=>51
,p_name=>'ICON_INFO'
,p_display_name=>'Info'
,p_display_sequence=>290
,p_button_template_id=>wwv_flow_api.id(17878311386660320948)
,p_css_classes=>'ui-icon-info'
,p_group_id=>wwv_flow_api.id(17878311425499320949)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(17878313779238320950)
,p_theme_id=>51
,p_name=>'ICON_LEFT'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(17878311386660320948)
,p_css_classes=>'ui-btn-icon-left'
,p_group_id=>wwv_flow_api.id(17878311931680320949)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(17878313870693320950)
,p_theme_id=>51
,p_name=>'ICON_LOCATION'
,p_display_name=>'Location'
,p_display_sequence=>300
,p_button_template_id=>wwv_flow_api.id(17878311386660320948)
,p_css_classes=>'ui-icon-location'
,p_group_id=>wwv_flow_api.id(17878311425499320949)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(17878313918584320950)
,p_theme_id=>51
,p_name=>'ICON_LOCK'
,p_display_name=>'Lock'
,p_display_sequence=>310
,p_button_template_id=>wwv_flow_api.id(17878311386660320948)
,p_css_classes=>'ui-icon-lock'
,p_group_id=>wwv_flow_api.id(17878311425499320949)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(17878314033150320950)
,p_theme_id=>51
,p_name=>'ICON_MAIL'
,p_display_name=>'Mail'
,p_display_sequence=>320
,p_button_template_id=>wwv_flow_api.id(17878311386660320948)
,p_css_classes=>'ui-icon-mail'
,p_group_id=>wwv_flow_api.id(17878311425499320949)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(17878314104913320951)
,p_theme_id=>51
,p_name=>'ICON_MINUS'
,p_display_name=>'Minus'
,p_display_sequence=>330
,p_button_template_id=>wwv_flow_api.id(17878311386660320948)
,p_css_classes=>'ui-icon-minus'
,p_group_id=>wwv_flow_api.id(17878311425499320949)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(17878314295181320951)
,p_theme_id=>51
,p_name=>'ICON_PHONE'
,p_display_name=>'Phone'
,p_display_sequence=>340
,p_button_template_id=>wwv_flow_api.id(17878311386660320948)
,p_css_classes=>'ui-icon-phone'
,p_group_id=>wwv_flow_api.id(17878311425499320949)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(17878314372083320951)
,p_theme_id=>51
,p_name=>'ICON_PLUS'
,p_display_name=>'Plus'
,p_display_sequence=>350
,p_button_template_id=>wwv_flow_api.id(17878311386660320948)
,p_css_classes=>'ui-icon-plus'
,p_group_id=>wwv_flow_api.id(17878311425499320949)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(17878314470777320951)
,p_theme_id=>51
,p_name=>'ICON_POWER'
,p_display_name=>'Power'
,p_display_sequence=>360
,p_button_template_id=>wwv_flow_api.id(17878311386660320948)
,p_css_classes=>'ui-icon-power'
,p_group_id=>wwv_flow_api.id(17878311425499320949)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(17878314577771320951)
,p_theme_id=>51
,p_name=>'ICON_REFRESH'
,p_display_name=>'Refresh'
,p_display_sequence=>370
,p_button_template_id=>wwv_flow_api.id(17878311386660320948)
,p_css_classes=>'ui-icon-refresh'
,p_group_id=>wwv_flow_api.id(17878311425499320949)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(17878314608441320951)
,p_theme_id=>51
,p_name=>'ICON_RIGHT'
,p_display_name=>'Right'
,p_display_sequence=>40
,p_button_template_id=>wwv_flow_api.id(17878311386660320948)
,p_css_classes=>'ui-btn-icon-right'
,p_group_id=>wwv_flow_api.id(17878311931680320949)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(17878314760774320951)
,p_theme_id=>51
,p_name=>'ICON_SEARCH'
,p_display_name=>'Search'
,p_display_sequence=>380
,p_button_template_id=>wwv_flow_api.id(17878311386660320948)
,p_css_classes=>'ui-icon-search'
,p_group_id=>wwv_flow_api.id(17878311425499320949)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(17878314890951320951)
,p_theme_id=>51
,p_name=>'ICON_STAR'
,p_display_name=>'Star'
,p_display_sequence=>390
,p_button_template_id=>wwv_flow_api.id(17878311386660320948)
,p_css_classes=>'ui-icon-star'
,p_group_id=>wwv_flow_api.id(17878311425499320949)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(17878314929750320951)
,p_theme_id=>51
,p_name=>'ICON_TAG'
,p_display_name=>'Tag'
,p_display_sequence=>400
,p_button_template_id=>wwv_flow_api.id(17878311386660320948)
,p_css_classes=>'ui-icon-tag'
,p_group_id=>wwv_flow_api.id(17878311425499320949)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(17878315008217320951)
,p_theme_id=>51
,p_name=>'ICON_TOP'
,p_display_name=>'Top'
,p_display_sequence=>30
,p_button_template_id=>wwv_flow_api.id(17878311386660320948)
,p_css_classes=>'ui-btn-icon-top'
,p_group_id=>wwv_flow_api.id(17878311931680320949)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(17878315175859320951)
,p_theme_id=>51
,p_name=>'ICON_USER'
,p_display_name=>'User'
,p_display_sequence=>410
,p_button_template_id=>wwv_flow_api.id(17878311386660320948)
,p_css_classes=>'ui-icon-user'
,p_group_id=>wwv_flow_api.id(17878311425499320949)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(17878315230756320951)
,p_theme_id=>51
,p_name=>'INLINE_BUTTON'
,p_display_name=>'Inline Button'
,p_display_sequence=>5
,p_button_template_id=>wwv_flow_api.id(17878311386660320948)
,p_css_classes=>'ui-btn-inline'
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(17878315391336320952)
,p_theme_id=>51
,p_name=>'NO_TEXT'
,p_display_name=>'No Text'
,p_display_sequence=>60
,p_button_template_id=>wwv_flow_api.id(17878311386660320948)
,p_css_classes=>'ui-btn-icon-notext'
,p_group_id=>wwv_flow_api.id(17878311931680320949)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(17878315469381320952)
,p_theme_id=>51
,p_name=>'ROUNDED_CORNERS'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(17878311386660320948)
,p_css_classes=>'ui-corner-all'
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(17878315688617320952)
,p_theme_id=>51
,p_name=>'INLINE_BUTTON'
,p_display_name=>'Inline Button'
,p_display_sequence=>1
,p_button_template_id=>wwv_flow_api.id(17878315588743320952)
,p_css_classes=>'ui-btn-inline'
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(17878315796782320952)
,p_theme_id=>51
,p_name=>'ROUNDED_CORNERS'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>1
,p_button_template_id=>wwv_flow_api.id(17878315588743320952)
,p_css_classes=>'ui-corner-all'
,p_template_types=>'BUTTON'
);
end;
/
prompt --application/shared_components/logic/build_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts
begin
null;
end;
/
prompt --application/shared_components/security/authentications
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(17878316751979320961)
,p_name=>'No Authentication'
,p_scheme_type=>'NATIVE_DAD'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(17878316572461320961)
,p_ui_type_name=>'JQM_SMARTPHONE'
,p_display_name=>'Mobile'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>51
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_api.id(17878287999809320936)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(17878310947497320947)
,p_nav_list_template_options=>'#DEFAULT#'
,p_nav_bar_type=>'NAVBAR'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_api.create_page(
 p_id=>0
,p_user_interface_id=>wwv_flow_api.id(17878316572461320961)
,p_name=>'Global Page - Mobile'
,p_page_mode=>'NORMAL'
,p_step_title=>'Global Page - Mobile'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'D'
,p_cache_mode=>'NOCACHE'
,p_last_upd_yyyymmddhh24miss=>'20151119194931'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17878317156419320964)
,p_plug_name=>'Header'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(17878309829069320944)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_row_template=>1
,p_plug_display_condition_type=>'CURRENT_PAGE_NOT_IN_CONDITION'
,p_plug_display_when_condition=>'101'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
,p_plug_comment=>'Header'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17878317440198320965)
,p_plug_name=>'Footer'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(17878309658606320944)
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_08'
,p_plug_query_row_template=>1
,p_plug_display_condition_type=>'CURRENT_PAGE_NOT_IN_CONDITION'
,p_plug_display_when_condition=>'101'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
,p_plug_comment=>'Footer'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17878317329837320965)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(17878317156419320964)
,p_button_name=>'LOGOUT'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(17878315588743320952)
,p_button_image_alt=>'Log Out'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'javascript:location.href="&LOGOUT_URL.";'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17878317231254320964)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(17878317156419320964)
,p_button_name=>'MENU'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:ui-btn-icon-notext:ui-icon-bars'
,p_button_template_id=>wwv_flow_api.id(17878311386660320948)
,p_button_image_alt=>'Menu'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_cattributes=>' data-direction="reverse"'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(17878317519989320965)
,p_name=>'open panel'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(17878317231254320964)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17878317519989320965)
,p_event_id=>wwv_flow_api.id(17878317519989320965)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$.mobile.activePage.find(''#menupanel'').panel("open");'
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(17878316572461320961)
,p_name=>'21 Most Purchased Vehicles In America'
,p_page_mode=>'NORMAL'
,p_step_title=>'21 Most Purchased Vehicles In America'
,p_step_sub_title=>'Home'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'IAN.D@LIVE.COM'
,p_last_upd_yyyymmddhh24miss=>'20151122210845'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17961545563809218532)
,p_plug_name=>'Application Instructions'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(17878310215219320945)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid=>true
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p><strong>Choose a vehicle manufacturer from the navigation bar to view detailed information as well as their most popular offerings.</strong></p>',
'',
'',
'',
'Data for the application sourced from <u>http://www.businessinsider.com/best-selling-cars-in-december-2013-2014-1?op=1</u> as well as the respective manufacturer websites.'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_api.create_page(
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(17878316572461320961)
,p_name=>'Manufacturer Overview'
,p_page_mode=>'NORMAL'
,p_step_title=>'Manufacturer Overview'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'IAN.D@LIVE.COM'
,p_last_upd_yyyymmddhh24miss=>'20151122210302'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17955445373053867412)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(17878310161647320945)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17955453678005867428)
,p_plug_name=>'Results'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(17878310215219320945)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid=>true
,p_plug_display_column=>1
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select',
'jt2.MAKENAME    MAKENAME,		',
'jt3.FOUNDED	FOUNDED,		',
'jt4.EXECUTIVE	EXECUTIVE,',
'jt5.CITY    CITY,',
'jt6.STATE    STATE,',
'jt7.WEBSITE    WEBSITE',
'from	apex_collections	t,',
'json_table(t.clob001,	''$.MAKENAME[*]''	COLUMNS	rid	for	ordinality,	MAKENAME	varchar2(30)	path	',
'''$'')	jt2		',
',	',
'json_table(t.clob001,	''$.FOUNDED[*]''	COLUMNS	rid	for	ordinality,	FOUNDED	varchar2(30)	path	',
'''$'')	jt3	',
',',
'json_table(t.clob001,	''$.EXECUTIVE[*]''	COLUMNS	rid	for	ordinality,	EXECUTIVE	varchar2(30)	path	',
'''$'')	jt4',
',',
'json_table(t.clob001,	''$.CITY[*]''	COLUMNS	rid	for	ordinality,	CITY	varchar2(30)	path	',
'''$'')	jt5',
',',
'json_table(t.clob001,	''$.STATE[*]''	COLUMNS	rid	for	ordinality,	STATE	varchar2(30)	path	',
'''$'')	jt6	',
',',
'json_table(t.clob001,	''$.WEBSITE[*]''	COLUMNS	rid	for	ordinality,	WEBSITE	varchar2(30)	path	',
'''$'')	jt7',
'where	t.collection_name	=	''P5_DOREST_RESULTS''	and		',
'jt2.rid	=	jt3.rid	and	jt3.rid	=	jt4.rid and jt4.rid = jt5.rid and jt5.rid = jt6.rid ',
'and jt6.rid = jt7.rid'))
,p_plug_source_type=>'NATIVE_JQM_REFLOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STRIPE:STROKE'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18142415351378829737)
,p_name=>'MAKENAME'
,p_data_type=>'MAKENAME'
,p_is_visible=>true
,p_display_sequence=>10
,p_heading=>'Makename'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18142415494374829738)
,p_name=>'FOUNDED'
,p_data_type=>'FOUNDED'
,p_is_visible=>true
,p_display_sequence=>20
,p_heading=>'Founded'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18142415567988829739)
,p_name=>'EXECUTIVE'
,p_data_type=>'EXECUTIVE'
,p_is_visible=>true
,p_display_sequence=>30
,p_heading=>'Executive'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18142415661973829740)
,p_name=>'CITY'
,p_data_type=>'CITY'
,p_is_visible=>true
,p_display_sequence=>40
,p_heading=>'City'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18142415703189829741)
,p_name=>'STATE'
,p_data_type=>'STATE'
,p_is_visible=>true
,p_display_sequence=>50
,p_heading=>'State'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18142415880255829742)
,p_name=>'WEBSITE'
,p_data_type=>'WEBSITE'
,p_is_visible=>true
,p_display_sequence=>60
,p_heading=>'Website'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17955445784337867413)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(17955445373053867412)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(17878315588743320952)
,p_button_image_alt=>'Load Manufacturer Data'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(17955446128862867415)
,p_branch_action=>'f?p=&APP_ID.:5:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17955446965774867418)
,p_name=>'P5_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(17955445373053867412)
,p_source=>'jdbc:oracle:thin:@sayonara.microlab.cs.utexas.edu:1521:orcl'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17955447719347867421)
,p_name=>'P5_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(17955445373053867412)
,p_source=>'C##cs347_imw252'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17955448592276867422)
,p_name=>'P5_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(17955445373053867412)
,p_source=>'orcl_imw252'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17955449314359867422)
,p_name=>'P5_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(17955445373053867412)
,p_source=>'rdf_mode'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17955450130520867423)
,p_name=>'P5_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(17955445373053867412)
,p_source=>'D3'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17955450936725867424)
,p_name=>'P5_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(17955445373053867412)
,p_source=>'False'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17955451788805867424)
,p_name=>'P5_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(17955445373053867412)
,p_source=>'Neo4j_JSON'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17955452550623867425)
,p_name=>'P5_QUERY'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(17955445373053867412)
,p_source=>'"MATCH (a:MAKE) RETURN a"'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18142411740462829701)
,p_name=>'New'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(17955446504386867415)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'17886158432636348069:17886158625238348077'
,p_attribute_01=>wwv_flow_api.id(17886158625238348077)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P5_DOREST_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_api.create_page(
 p_id=>7
,p_user_interface_id=>wwv_flow_api.id(17878316572461320961)
,p_name=>'Ford'
,p_page_mode=>'NORMAL'
,p_step_title=>'Ford'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'IAN.D@LIVE.COM'
,p_last_upd_yyyymmddhh24miss=>'20151122212823'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18147694466636385154)
,p_plug_name=>'Ford'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(17878310161647320945)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18147712724579385173)
,p_plug_name=>'Results'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(17878310215219320945)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select',
'jt9.MODELNAME    MODEL_NAME,',
'jt11.FIRSTYEAR    FIRST_YEAR,',
'jt12.PRICE    STICKER_PRICE,',
'jt13.SALES    DECEMBER_SALES',
'from	apex_collections	t,		',
'json_table(t.clob001,	''$.MODELNAME[*]''	COLUMNS	rid	for	ordinality,	MODELNAME	varchar2(30)	path	',
'''$'')	jt9',
',',
'json_table(t.clob001,	''$.FIRSTYEAR[*]''	COLUMNS	rid	for	ordinality,	FIRSTYEAR	number	path	''$'')	jt11',
',',
'json_table(t.clob001,	''$.PRICE[*]''	COLUMNS	rid	for	ordinality,	PRICE	number	path	''$'')	jt12',
',',
'json_table(t.clob001,	''$.SALES[*]''	COLUMNS	rid	for	ordinality,	SALES	number	path	''$'')	jt13',
'where	t.collection_name	=	''P7_DOREST_RESULTS''	and		',
'jt9.rid = jt11.rid ',
'and jt11.rid = jt12.rid and jt12.rid = jt13.rid'))
,p_plug_source_type=>'NATIVE_JQM_REFLOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STRIPE:STROKE'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18151345044407460345)
,p_name=>'MODEL_NAME'
,p_data_type=>'MODEL_NAME'
,p_is_visible=>true
,p_display_sequence=>10
,p_heading=>'Model name'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18151345146950460346)
,p_name=>'FIRST_YEAR'
,p_data_type=>'FIRST_YEAR'
,p_is_visible=>true
,p_display_sequence=>20
,p_heading=>'First year'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18151345284430460347)
,p_name=>'STICKER_PRICE'
,p_data_type=>'STICKER_PRICE'
,p_is_visible=>true
,p_display_sequence=>30
,p_heading=>'Sticker price'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18151345317523460348)
,p_name=>'DECEMBER_SALES'
,p_data_type=>'DECEMBER_SALES'
,p_is_visible=>true
,p_display_sequence=>40
,p_heading=>'December sales'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18147694885295385155)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(18147694466636385154)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(17878315588743320952)
,p_button_image_alt=>'Load Vehicle Data'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(18147695276678385156)
,p_branch_action=>'f?p=&APP_ID.:7:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18147696015452385162)
,p_name=>'P7_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(18147694466636385154)
,p_item_default=>'jdbc:oracle:thin:@sayonara.microlab.cs.utexas.edu:1521:orcl'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18147696862777385165)
,p_name=>'P7_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(18147694466636385154)
,p_item_default=>'C##cs347_imw252'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18147697669863385166)
,p_name=>'P7_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(18147694466636385154)
,p_item_default=>'orcl_imw252'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18147708448372385167)
,p_name=>'P7_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(18147694466636385154)
,p_item_default=>'rdf_mode'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18147709276408385168)
,p_name=>'P7_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(18147694466636385154)
,p_item_default=>'D3'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18147710098933385168)
,p_name=>'P7_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(18147694466636385154)
,p_item_default=>'False'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18147710838120385169)
,p_name=>'P7_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(18147694466636385154)
,p_item_default=>'Neo4j_JSON'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18147711614226385170)
,p_name=>'P7_QUERY'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(18147694466636385154)
,p_item_default=>'"MATCH (a:MODEL) WHERE a.MAKENO = 0 RETURN a"'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18147695648956385158)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'17886158432636348069:17886158625238348077'
,p_attribute_01=>wwv_flow_api.id(17886158625238348077)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P7_DOREST_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_api.create_page(
 p_id=>8
,p_user_interface_id=>wwv_flow_api.id(17878316572461320961)
,p_name=>'Chevrolet'
,p_page_mode=>'NORMAL'
,p_step_title=>'Chevrolet'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'IAN.D@LIVE.COM'
,p_last_upd_yyyymmddhh24miss=>'20151122210923'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18148409843360284848)
,p_plug_name=>'Chevrolet'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(17878310161647320945)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18148418043687284860)
,p_plug_name=>'Results'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(17878310215219320945)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select',
'jt9.MODELNAME    MODEL_NAME,',
'jt11.FIRSTYEAR    FIRST_YEAR,',
'jt12.PRICE    STICKER_PRICE,',
'jt13.SALES    DECEMBER_SALES',
'from	apex_collections	t,		',
'json_table(t.clob001,	''$.MODELNAME[*]''	COLUMNS	rid	for	ordinality,	MODELNAME	varchar2(30)	path	',
'''$'')	jt9',
',',
'json_table(t.clob001,	''$.FIRSTYEAR[*]''	COLUMNS	rid	for	ordinality,	FIRSTYEAR	number	path	''$'')	jt11',
',',
'json_table(t.clob001,	''$.PRICE[*]''	COLUMNS	rid	for	ordinality,	PRICE	number	path	''$'')	jt12',
',',
'json_table(t.clob001,	''$.SALES[*]''	COLUMNS	rid	for	ordinality,	SALES	number	path	''$'')	jt13',
'where	t.collection_name	=	''P8_DOREST_RESULTS''	and		',
'jt9.rid = jt11.rid ',
'and jt11.rid = jt12.rid and jt12.rid = jt13.rid'))
,p_plug_source_type=>'NATIVE_JQM_REFLOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STRIPE:STROKE'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18151341487753460309)
,p_name=>'MODEL_NAME'
,p_data_type=>'MODEL_NAME'
,p_is_visible=>true
,p_display_sequence=>10
,p_heading=>'Model name'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18151341533403460310)
,p_name=>'FIRST_YEAR'
,p_data_type=>'FIRST_YEAR'
,p_is_visible=>true
,p_display_sequence=>20
,p_heading=>'First year'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18151341641339460311)
,p_name=>'STICKER_PRICE'
,p_data_type=>'STICKER_PRICE'
,p_is_visible=>true
,p_display_sequence=>30
,p_heading=>'Sticker price'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18151341714560460312)
,p_name=>'DECEMBER_SALES'
,p_data_type=>'DECEMBER_SALES'
,p_is_visible=>true
,p_display_sequence=>40
,p_heading=>'December sales'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18148410202546284849)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(18148409843360284848)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(17878315588743320952)
,p_button_image_alt=>'Load Vehicle Data'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(18148410676873284850)
,p_branch_action=>'f?p=&APP_ID.:8:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18148411304667284852)
,p_name=>'P8_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(18148409843360284848)
,p_item_default=>'jdbc:oracle:thin:@sayonara.microlab.cs.utexas.edu:1521:orcl'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18148412198076284853)
,p_name=>'P8_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(18148409843360284848)
,p_item_default=>'C##cs347_imw252'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18148412980781284854)
,p_name=>'P8_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(18148409843360284848)
,p_item_default=>'orcl_imw252'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18148413732048284855)
,p_name=>'P8_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(18148409843360284848)
,p_item_default=>'rdf_mode'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18148414526410284856)
,p_name=>'P8_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(18148409843360284848)
,p_item_default=>'D3'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18148415371500284857)
,p_name=>'P8_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(18148409843360284848)
,p_item_default=>'False'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18148416137771284857)
,p_name=>'P8_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(18148409843360284848)
,p_item_default=>'Neo4j_JSON'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18148416945932284858)
,p_name=>'P8_QUERY'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(18148409843360284848)
,p_item_default=>'"MATCH (a:MODEL) WHERE a.MAKENO = 1 RETURN a"'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18148411034337284851)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'17886158432636348069:17886158625238348077'
,p_attribute_01=>wwv_flow_api.id(17886158625238348077)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P8_DOREST_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_api.create_page(
 p_id=>9
,p_user_interface_id=>wwv_flow_api.id(17878316572461320961)
,p_name=>'Toyota'
,p_page_mode=>'NORMAL'
,p_step_title=>'Toyota'
,p_step_sub_title=>'Toyota'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'IAN.D@LIVE.COM'
,p_last_upd_yyyymmddhh24miss=>'20151122210931'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18149625558572511597)
,p_plug_name=>'Toyota'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(17878310161647320945)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18149649577301511608)
,p_plug_name=>'Results'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(17878310215219320945)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select',
'jt9.MODELNAME    MODEL_NAME,',
'jt11.FIRSTYEAR    FIRST_YEAR,',
'jt12.PRICE    STICKER_PRICE,',
'jt13.SALES    DECEMBER_SALES',
'from	apex_collections	t,		',
'json_table(t.clob001,	''$.MODELNAME[*]''	COLUMNS	rid	for	ordinality,	MODELNAME	varchar2(30)	path	',
'''$'')	jt9',
',',
'json_table(t.clob001,	''$.FIRSTYEAR[*]''	COLUMNS	rid	for	ordinality,	FIRSTYEAR	number	path	''$'')	jt11',
',',
'json_table(t.clob001,	''$.PRICE[*]''	COLUMNS	rid	for	ordinality,	PRICE	number	path	''$'')	jt12',
',',
'json_table(t.clob001,	''$.SALES[*]''	COLUMNS	rid	for	ordinality,	SALES	number	path	''$'')	jt13',
'where	t.collection_name	=	''P9_DOREST_RESULTS''	and		',
'jt9.rid = jt11.rid ',
'and jt11.rid = jt12.rid and jt12.rid = jt13.rid'))
,p_plug_source_type=>'NATIVE_JQM_REFLOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STRIPE:STROKE'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18151341866349460313)
,p_name=>'MODEL_NAME'
,p_data_type=>'MODEL_NAME'
,p_is_visible=>true
,p_display_sequence=>10
,p_heading=>'Model name'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18151341997086460314)
,p_name=>'FIRST_YEAR'
,p_data_type=>'FIRST_YEAR'
,p_is_visible=>true
,p_display_sequence=>20
,p_heading=>'First year'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18151342074409460315)
,p_name=>'STICKER_PRICE'
,p_data_type=>'STICKER_PRICE'
,p_is_visible=>true
,p_display_sequence=>30
,p_heading=>'Sticker price'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18151342190004460316)
,p_name=>'DECEMBER_SALES'
,p_data_type=>'DECEMBER_SALES'
,p_is_visible=>true
,p_display_sequence=>40
,p_heading=>'December sales'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18149625923656511599)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(18149625558572511597)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(17878315588743320952)
,p_button_image_alt=>'Load Vehicle Data'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(18149655274242511619)
,p_branch_action=>'f?p=&APP_ID.:9:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18149626345882511602)
,p_name=>'P9_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(18149625558572511597)
,p_item_default=>'jdbc:oracle:thin:@sayonara.microlab.cs.utexas.edu:1521:orcl'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18149626783838511603)
,p_name=>'P9_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(18149625558572511597)
,p_item_default=>'C##cs347_imw252'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18149627154132511604)
,p_name=>'P9_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(18149625558572511597)
,p_item_default=>'orcl_imw252'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18149627546798511604)
,p_name=>'P9_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(18149625558572511597)
,p_item_default=>'rdf_mode'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18149627920898511605)
,p_name=>'P9_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(18149625558572511597)
,p_item_default=>'D3'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18149648372311511605)
,p_name=>'P9_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(18149625558572511597)
,p_item_default=>'False'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18149648719949511606)
,p_name=>'P9_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(18149625558572511597)
,p_item_default=>'Neo4j_JSON'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18149649188477511606)
,p_name=>'P9_QUERY'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(18149625558572511597)
,p_item_default=>'"MATCH (a:MODEL) WHERE a.MAKENO = 2 RETURN a"'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18149651542454511614)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'17886158432636348069:17886158625238348077'
,p_attribute_01=>wwv_flow_api.id(17886158625238348077)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P9_DOREST_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_api.create_page(
 p_id=>10
,p_user_interface_id=>wwv_flow_api.id(17878316572461320961)
,p_name=>'Jeep'
,p_page_mode=>'NORMAL'
,p_step_title=>'Jeep'
,p_step_sub_title=>'Jeep'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'IAN.D@LIVE.COM'
,p_last_upd_yyyymmddhh24miss=>'20151122210942'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18150014934590550968)
,p_plug_name=>'Jeep'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(17878310161647320945)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18150018888149550977)
,p_plug_name=>'Results'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(17878310215219320945)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select',
'jt9.MODELNAME    MODEL_NAME,',
'jt11.FIRSTYEAR    FIRST_YEAR,',
'jt12.PRICE    STICKER_PRICE,',
'jt13.SALES    DECEMBER_SALES',
'from	apex_collections	t,		',
'json_table(t.clob001,	''$.MODELNAME[*]''	COLUMNS	rid	for	ordinality,	MODELNAME	varchar2(30)	path	',
'''$'')	jt9',
',',
'json_table(t.clob001,	''$.FIRSTYEAR[*]''	COLUMNS	rid	for	ordinality,	FIRSTYEAR	number	path	''$'')	jt11',
',',
'json_table(t.clob001,	''$.PRICE[*]''	COLUMNS	rid	for	ordinality,	PRICE	number	path	''$'')	jt12',
',',
'json_table(t.clob001,	''$.SALES[*]''	COLUMNS	rid	for	ordinality,	SALES	number	path	''$'')	jt13',
'where	t.collection_name	=	''P10_DOREST_RESULTS''	and		',
'jt9.rid = jt11.rid ',
'and jt11.rid = jt12.rid and jt12.rid = jt13.rid'))
,p_plug_source_type=>'NATIVE_JQM_REFLOW'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STRIPE:STROKE'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18151342218052460317)
,p_name=>'MODEL_NAME'
,p_data_type=>'MODEL_NAME'
,p_is_visible=>true
,p_display_sequence=>10
,p_heading=>'Model name'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18151342315213460318)
,p_name=>'FIRST_YEAR'
,p_data_type=>'FIRST_YEAR'
,p_is_visible=>true
,p_display_sequence=>20
,p_heading=>'First year'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18151342455178460319)
,p_name=>'STICKER_PRICE'
,p_data_type=>'STICKER_PRICE'
,p_is_visible=>true
,p_display_sequence=>30
,p_heading=>'Sticker price'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18151342549102460320)
,p_name=>'DECEMBER_SALES'
,p_data_type=>'DECEMBER_SALES'
,p_is_visible=>true
,p_display_sequence=>40
,p_heading=>'December sales'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18150015301987550970)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(18150014934590550968)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(17878315588743320952)
,p_button_image_alt=>'Load Vehicle Data'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(18150024909692550988)
,p_branch_action=>'f?p=&APP_ID.:10:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18150015689243550971)
,p_name=>'P10_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(18150014934590550968)
,p_item_default=>'jdbc:oracle:thin:@sayonara.microlab.cs.utexas.edu:1521:orcl'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18150016005705550972)
,p_name=>'P10_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(18150014934590550968)
,p_item_default=>'C##cs347_imw252'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18150016404260550973)
,p_name=>'P10_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(18150014934590550968)
,p_item_default=>'orcl_imw252'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18150016800325550973)
,p_name=>'P10_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(18150014934590550968)
,p_item_default=>'rdf_mode'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18150017247204550974)
,p_name=>'P10_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(18150014934590550968)
,p_item_default=>'D3'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18150017673120550975)
,p_name=>'P10_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(18150014934590550968)
,p_item_default=>'False'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18150018028998550975)
,p_name=>'P10_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(18150014934590550968)
,p_item_default=>'Neo4j_JSON'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18150018410736550976)
,p_name=>'P10_QUERY'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(18150014934590550968)
,p_item_default=>'"MATCH (a:MODEL) WHERE a.MAKENO = 3 RETURN a"'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18150021230835550982)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'17886158432636348069:17886158625238348077'
,p_attribute_01=>wwv_flow_api.id(17886158625238348077)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P10_DOREST_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_api.create_page(
 p_id=>11
,p_user_interface_id=>wwv_flow_api.id(17878316572461320961)
,p_name=>'GMC'
,p_page_mode=>'NORMAL'
,p_step_title=>'GMC'
,p_step_sub_title=>'GMC'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'IAN.D@LIVE.COM'
,p_last_upd_yyyymmddhh24miss=>'20151122210952'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18150337469736390453)
,p_plug_name=>'GMC'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(17878310161647320945)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18150351424147390463)
,p_plug_name=>'Results'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(17878310215219320945)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select',
'jt9.MODELNAME    MODEL_NAME,',
'jt11.FIRSTYEAR    FIRST_YEAR,',
'jt12.PRICE    STICKER_PRICE,',
'jt13.SALES    DECEMBER_SALES',
'from	apex_collections	t,		',
'json_table(t.clob001,	''$.MODELNAME[*]''	COLUMNS	rid	for	ordinality,	MODELNAME	varchar2(30)	path	',
'''$'')	jt9',
',',
'json_table(t.clob001,	''$.FIRSTYEAR[*]''	COLUMNS	rid	for	ordinality,	FIRSTYEAR	number	path	''$'')	jt11',
',',
'json_table(t.clob001,	''$.PRICE[*]''	COLUMNS	rid	for	ordinality,	PRICE	number	path	''$'')	jt12',
',',
'json_table(t.clob001,	''$.SALES[*]''	COLUMNS	rid	for	ordinality,	SALES	number	path	''$'')	jt13',
'where	t.collection_name	=	''P11_DOREST_RESULTS''	and		',
'jt9.rid = jt11.rid ',
'and jt11.rid = jt12.rid and jt12.rid = jt13.rid'))
,p_plug_source_type=>'NATIVE_JQM_REFLOW'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STRIPE:STROKE'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18151342638037460321)
,p_name=>'MODEL_NAME'
,p_data_type=>'MODEL_NAME'
,p_is_visible=>true
,p_display_sequence=>10
,p_heading=>'Model name'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18151342749978460322)
,p_name=>'FIRST_YEAR'
,p_data_type=>'FIRST_YEAR'
,p_is_visible=>true
,p_display_sequence=>20
,p_heading=>'First year'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18151342819535460323)
,p_name=>'STICKER_PRICE'
,p_data_type=>'STICKER_PRICE'
,p_is_visible=>true
,p_display_sequence=>30
,p_heading=>'Sticker price'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18151342959762460324)
,p_name=>'DECEMBER_SALES'
,p_data_type=>'DECEMBER_SALES'
,p_is_visible=>true
,p_display_sequence=>40
,p_heading=>'December sales'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18150337808033390455)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(18150337469736390453)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(17878315588743320952)
,p_button_image_alt=>'Load Vehicle Data'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(18150357563319390478)
,p_branch_action=>'f?p=&APP_ID.:11:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18150348281341390457)
,p_name=>'P11_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(18150337469736390453)
,p_item_default=>'jdbc:oracle:thin:@sayonara.microlab.cs.utexas.edu:1521:orcl'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18150348689694390459)
,p_name=>'P11_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(18150337469736390453)
,p_item_default=>'C##cs347_imw252'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18150349081822390460)
,p_name=>'P11_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(18150337469736390453)
,p_item_default=>'orcl_imw252'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18150349427110390460)
,p_name=>'P11_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(18150337469736390453)
,p_item_default=>'rdf_mode'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18150349886292390461)
,p_name=>'P11_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(18150337469736390453)
,p_item_default=>'D3'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18150350245646390461)
,p_name=>'P11_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(18150337469736390453)
,p_item_default=>'False'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18150350671531390461)
,p_name=>'P11_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(18150337469736390453)
,p_item_default=>'Neo4j_JSON'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18150351022870390462)
,p_name=>'P11_QUERY'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(18150337469736390453)
,p_item_default=>'"MATCH (a:MODEL) WHERE a.MAKENO = 4 RETURN a"'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18150353817389390473)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'17886158432636348069:17886158625238348077'
,p_attribute_01=>wwv_flow_api.id(17886158625238348077)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P11_DOREST_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_api.create_page(
 p_id=>12
,p_user_interface_id=>wwv_flow_api.id(17878316572461320961)
,p_name=>'Hyundai'
,p_page_mode=>'NORMAL'
,p_step_title=>'Hyundai'
,p_step_sub_title=>'Hyundai'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'IAN.D@LIVE.COM'
,p_last_upd_yyyymmddhh24miss=>'20151122211006'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18150452159976561679)
,p_plug_name=>'Hyundai'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(17878310161647320945)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18150456133714561689)
,p_plug_name=>'Results'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(17878310215219320945)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select',
'jt9.MODELNAME    MODEL_NAME,',
'jt11.FIRSTYEAR    FIRST_YEAR,',
'jt12.PRICE    STICKER_PRICE,',
'jt13.SALES    DECEMBER_SALES',
'from	apex_collections	t,		',
'json_table(t.clob001,	''$.MODELNAME[*]''	COLUMNS	rid	for	ordinality,	MODELNAME	varchar2(30)	path	',
'''$'')	jt9',
',',
'json_table(t.clob001,	''$.FIRSTYEAR[*]''	COLUMNS	rid	for	ordinality,	FIRSTYEAR	number	path	''$'')	jt11',
',',
'json_table(t.clob001,	''$.PRICE[*]''	COLUMNS	rid	for	ordinality,	PRICE	number	path	''$'')	jt12',
',',
'json_table(t.clob001,	''$.SALES[*]''	COLUMNS	rid	for	ordinality,	SALES	number	path	''$'')	jt13',
'where	t.collection_name	=	''P12_DOREST_RESULTS''	and		',
'jt9.rid = jt11.rid ',
'and jt11.rid = jt12.rid and jt12.rid = jt13.rid'))
,p_plug_source_type=>'NATIVE_JQM_REFLOW'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STRIPE:STROKE'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18151343026016460325)
,p_name=>'MODEL_NAME'
,p_data_type=>'MODEL_NAME'
,p_is_visible=>true
,p_display_sequence=>10
,p_heading=>'Model name'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18151343172190460326)
,p_name=>'FIRST_YEAR'
,p_data_type=>'FIRST_YEAR'
,p_is_visible=>true
,p_display_sequence=>20
,p_heading=>'First year'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18151343298316460327)
,p_name=>'STICKER_PRICE'
,p_data_type=>'STICKER_PRICE'
,p_is_visible=>true
,p_display_sequence=>30
,p_heading=>'Sticker price'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18151343324472460328)
,p_name=>'DECEMBER_SALES'
,p_data_type=>'DECEMBER_SALES'
,p_is_visible=>true
,p_display_sequence=>40
,p_heading=>'December sales'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18150452534729561682)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(18150452159976561679)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(17878315588743320952)
,p_button_image_alt=>'Load Vehicle Data'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(18150472245800561699)
,p_branch_action=>'f?p=&APP_ID.:12:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18150452923250561683)
,p_name=>'P12_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(18150452159976561679)
,p_item_default=>'jdbc:oracle:thin:@sayonara.microlab.cs.utexas.edu:1521:orcl'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18150453379771561684)
,p_name=>'P12_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(18150452159976561679)
,p_item_default=>'C##cs347_imw252'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18150453738297561684)
,p_name=>'P12_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(18150452159976561679)
,p_item_default=>'orcl_imw252'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18150454174997561685)
,p_name=>'P12_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(18150452159976561679)
,p_item_default=>'rdf_mode'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18150454536922561685)
,p_name=>'P12_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(18150452159976561679)
,p_item_default=>'D3'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18150454931629561686)
,p_name=>'P12_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(18150452159976561679)
,p_item_default=>'False'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18150455383271561686)
,p_name=>'P12_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(18150452159976561679)
,p_item_default=>'Neo4j_JSON'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18150455789922561687)
,p_name=>'P12_QUERY'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(18150452159976561679)
,p_item_default=>'"MATCH (a:MODEL) WHERE a.MAKENO = 5 RETURN a"'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18150468557128561695)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'17886158432636348069:17886158625238348077'
,p_attribute_01=>wwv_flow_api.id(17886158625238348077)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P12_DOREST_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_api.create_page(
 p_id=>13
,p_user_interface_id=>wwv_flow_api.id(17878316572461320961)
,p_name=>'Nissan'
,p_page_mode=>'NORMAL'
,p_step_title=>'Nissan'
,p_step_sub_title=>'Nissan'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'IAN.D@LIVE.COM'
,p_last_upd_yyyymmddhh24miss=>'20151122211914'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18150481808553565723)
,p_plug_name=>'Nissan'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(17878310161647320945)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18150485848180565730)
,p_plug_name=>'Results'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(17878310215219320945)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select',
'jt9.MODELNAME    MODEL_NAME,',
'jt11.FIRSTYEAR    FIRST_YEAR,',
'jt12.PRICE    STICKER_PRICE,',
'jt13.SALES    DECEMBER_SALES',
'from	apex_collections	t,		',
'json_table(t.clob001,	''$.MODELNAME[*]''	COLUMNS	rid	for	ordinality,	MODELNAME	varchar2(30)	path	',
'''$'')	jt9',
',',
'json_table(t.clob001,	''$.FIRSTYEAR[*]''	COLUMNS	rid	for	ordinality,	FIRSTYEAR	number	path	''$'')	jt11',
',',
'json_table(t.clob001,	''$.PRICE[*]''	COLUMNS	rid	for	ordinality,	PRICE	number	path	''$'')	jt12',
',',
'json_table(t.clob001,	''$.SALES[*]''	COLUMNS	rid	for	ordinality,	SALES	number	path	''$'')	jt13',
'where	t.collection_name	=	''P13_DOREST_RESULTS''	and		',
'jt9.rid = jt11.rid ',
'and jt11.rid = jt12.rid and jt12.rid = jt13.rid'))
,p_plug_source_type=>'NATIVE_JQM_REFLOW'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STRIPE:STROKE'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18151343424184460329)
,p_name=>'MODEL_NAME'
,p_data_type=>'MODEL_NAME'
,p_is_visible=>true
,p_display_sequence=>10
,p_heading=>'Model name'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18151343512432460330)
,p_name=>'FIRST_YEAR'
,p_data_type=>'FIRST_YEAR'
,p_is_visible=>true
,p_display_sequence=>20
,p_heading=>'First year'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18151343639782460331)
,p_name=>'STICKER_PRICE'
,p_data_type=>'STICKER_PRICE'
,p_is_visible=>true
,p_display_sequence=>30
,p_heading=>'Sticker price'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18151343792806460332)
,p_name=>'DECEMBER_SALES'
,p_data_type=>'DECEMBER_SALES'
,p_is_visible=>true
,p_display_sequence=>40
,p_heading=>'December sales'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18150482262803565724)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(18150481808553565723)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(17878315588743320952)
,p_button_image_alt=>'Load Vehicle Data'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(18150491964483565738)
,p_branch_action=>'f?p=&APP_ID.:13:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18150482659625565724)
,p_name=>'P13_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(18150481808553565723)
,p_item_default=>'jdbc:oracle:thin:@sayonara.microlab.cs.utexas.edu:1521:orcl'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18150483071101565725)
,p_name=>'P13_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(18150481808553565723)
,p_item_default=>'C##cs347_imw252'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18150483493513565726)
,p_name=>'P13_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(18150481808553565723)
,p_item_default=>'orcl_imw252'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18150483851822565726)
,p_name=>'P13_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(18150481808553565723)
,p_item_default=>'rdf_mode'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18150484229386565726)
,p_name=>'P13_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(18150481808553565723)
,p_item_default=>'D3'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18150484662385565727)
,p_name=>'P13_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(18150481808553565723)
,p_item_default=>'False'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18150485053953565729)
,p_name=>'P13_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(18150481808553565723)
,p_item_default=>'Neo4j_JSON'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18150485441120565729)
,p_name=>'P13_QUERY'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(18150481808553565723)
,p_item_default=>'"MATCH (a:MODEL) WHERE a.MAKENO = 6 RETURN a"'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18150488226303565734)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'17886158432636348069:17886158625238348077'
,p_attribute_01=>wwv_flow_api.id(17886158625238348077)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P13_DOREST_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_api.create_page(
 p_id=>14
,p_user_interface_id=>wwv_flow_api.id(17878316572461320961)
,p_name=>'Honda'
,p_page_mode=>'NORMAL'
,p_step_title=>'Honda'
,p_step_sub_title=>'Honda'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'IAN.D@LIVE.COM'
,p_last_upd_yyyymmddhh24miss=>'20151122211048'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18150521589258568883)
,p_plug_name=>'Honda'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(17878310161647320945)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18150525668484568889)
,p_plug_name=>'Results'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(17878310215219320945)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select',
'jt9.MODELNAME    MODEL_NAME,',
'jt11.FIRSTYEAR    FIRST_YEAR,',
'jt12.PRICE    STICKER_PRICE,',
'jt13.SALES    DECEMBER_SALES',
'from	apex_collections	t,		',
'json_table(t.clob001,	''$.MODELNAME[*]''	COLUMNS	rid	for	ordinality,	MODELNAME	varchar2(30)	path	',
'''$'')	jt9',
',',
'json_table(t.clob001,	''$.FIRSTYEAR[*]''	COLUMNS	rid	for	ordinality,	FIRSTYEAR	number	path	''$'')	jt11',
',',
'json_table(t.clob001,	''$.PRICE[*]''	COLUMNS	rid	for	ordinality,	PRICE	number	path	''$'')	jt12',
',',
'json_table(t.clob001,	''$.SALES[*]''	COLUMNS	rid	for	ordinality,	SALES	number	path	''$'')	jt13',
'where	t.collection_name	=	''P14_DOREST_RESULTS''	and		',
'jt9.rid = jt11.rid ',
'and jt11.rid = jt12.rid and jt12.rid = jt13.rid'))
,p_plug_source_type=>'NATIVE_JQM_REFLOW'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STRIPE:STROKE'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18151343883166460333)
,p_name=>'MODEL_NAME'
,p_data_type=>'MODEL_NAME'
,p_is_visible=>true
,p_display_sequence=>10
,p_heading=>'Model name'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18151343910571460334)
,p_name=>'FIRST_YEAR'
,p_data_type=>'FIRST_YEAR'
,p_is_visible=>true
,p_display_sequence=>20
,p_heading=>'First year'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18151344043228460335)
,p_name=>'STICKER_PRICE'
,p_data_type=>'STICKER_PRICE'
,p_is_visible=>true
,p_display_sequence=>30
,p_heading=>'Sticker price'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18151344142550460336)
,p_name=>'DECEMBER_SALES'
,p_data_type=>'DECEMBER_SALES'
,p_is_visible=>true
,p_display_sequence=>40
,p_heading=>'December sales'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18150521925575568883)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(18150521589258568883)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(17878315588743320952)
,p_button_image_alt=>'Load Vehicle Data'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(18150531813965568895)
,p_branch_action=>'f?p=&APP_ID.:14:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18150522450697568884)
,p_name=>'P14_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(18150521589258568883)
,p_item_default=>'jdbc:oracle:thin:@sayonara.microlab.cs.utexas.edu:1521:orcl'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18150522887570568885)
,p_name=>'P14_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(18150521589258568883)
,p_item_default=>'C##cs347_imw252'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18150523256350568885)
,p_name=>'P14_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(18150521589258568883)
,p_item_default=>'orcl_imw252'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18150523631544568886)
,p_name=>'P14_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(18150521589258568883)
,p_item_default=>'rdf_mode'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18150524005972568886)
,p_name=>'P14_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(18150521589258568883)
,p_item_default=>'D3'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18150524407554568887)
,p_name=>'P14_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(18150521589258568883)
,p_item_default=>'False'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18150524882615568888)
,p_name=>'P14_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(18150521589258568883)
,p_item_default=>'Neo4j_JSON'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18150525212533568889)
,p_name=>'P14_QUERY'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(18150521589258568883)
,p_item_default=>'"MATCH (a:MODEL) WHERE a.MAKENO = 7 RETURN a"'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18150528191730568892)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'17886158432636348069:17886158625238348077'
,p_attribute_01=>wwv_flow_api.id(17886158625238348077)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P14_DOREST_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00015
begin
wwv_flow_api.create_page(
 p_id=>15
,p_user_interface_id=>wwv_flow_api.id(17878316572461320961)
,p_name=>'Dodge'
,p_page_mode=>'NORMAL'
,p_step_title=>'Dodge'
,p_step_sub_title=>'Dodge'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'IAN.D@LIVE.COM'
,p_last_upd_yyyymmddhh24miss=>'20151122211223'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18150514307113405423)
,p_plug_name=>'Dodge'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(17878310161647320945)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18150548341023405430)
,p_plug_name=>'Results'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(17878310215219320945)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select',
'jt9.MODELNAME    MODEL_NAME,',
'jt11.FIRSTYEAR    FIRST_YEAR,',
'jt12.PRICE    STICKER_PRICE,',
'jt13.SALES    DECEMBER_SALES',
'from	apex_collections	t,		',
'json_table(t.clob001,	''$.MODELNAME[*]''	COLUMNS	rid	for	ordinality,	MODELNAME	varchar2(30)	path	',
'''$'')	jt9',
',',
'json_table(t.clob001,	''$.FIRSTYEAR[*]''	COLUMNS	rid	for	ordinality,	FIRSTYEAR	number	path	''$'')	jt11',
',',
'json_table(t.clob001,	''$.PRICE[*]''	COLUMNS	rid	for	ordinality,	PRICE	number	path	''$'')	jt12',
',',
'json_table(t.clob001,	''$.SALES[*]''	COLUMNS	rid	for	ordinality,	SALES	number	path	''$'')	jt13',
'where	t.collection_name	=	''P15_DOREST_RESULTS''	and		',
'jt9.rid = jt11.rid ',
'and jt11.rid = jt12.rid and jt12.rid = jt13.rid'))
,p_plug_source_type=>'NATIVE_JQM_REFLOW'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STRIPE:STROKE'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18151344200244460337)
,p_name=>'MODEL_NAME'
,p_data_type=>'MODEL_NAME'
,p_is_visible=>true
,p_display_sequence=>10
,p_heading=>'Model name'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18151344360124460338)
,p_name=>'FIRST_YEAR'
,p_data_type=>'FIRST_YEAR'
,p_is_visible=>true
,p_display_sequence=>20
,p_heading=>'First year'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18151344472415460339)
,p_name=>'STICKER_PRICE'
,p_data_type=>'STICKER_PRICE'
,p_is_visible=>true
,p_display_sequence=>30
,p_heading=>'Sticker price'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18151344522666460340)
,p_name=>'DECEMBER_SALES'
,p_data_type=>'DECEMBER_SALES'
,p_is_visible=>true
,p_display_sequence=>40
,p_heading=>'December sales'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18150514703583405423)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(18150514307113405423)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(17878315588743320952)
,p_button_image_alt=>'Load Vehicle Data'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(18150554306634405438)
,p_branch_action=>'f?p=&APP_ID.:15:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18150515121323405425)
,p_name=>'P15_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(18150514307113405423)
,p_item_default=>'jdbc:oracle:thin:@sayonara.microlab.cs.utexas.edu:1521:orcl'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18150515594463405426)
,p_name=>'P15_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(18150514307113405423)
,p_item_default=>'C##cs347_imw252'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18150515949929405426)
,p_name=>'P15_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(18150514307113405423)
,p_item_default=>'orcl_imw252'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18150516349831405427)
,p_name=>'P15_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(18150514307113405423)
,p_item_default=>'rdf_mode'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18150516745592405427)
,p_name=>'P15_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(18150514307113405423)
,p_item_default=>'D3'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18150517128116405428)
,p_name=>'P15_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(18150514307113405423)
,p_item_default=>'False'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18150517570918405428)
,p_name=>'P15_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(18150514307113405423)
,p_item_default=>'Neo4j_JSON'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18150517954998405429)
,p_name=>'P15_QUERY'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(18150514307113405423)
,p_item_default=>'"MATCH (a:MODEL) WHERE a.MAKENO = 8 RETURN a"'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18150550604475405433)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'17886158432636348069:17886158625238348077'
,p_attribute_01=>wwv_flow_api.id(17886158625238348077)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P15_DOREST_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/shared_components/logic/webservices/vehicle_rest
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(17886158432636348069)
,p_name=>'Vehicle_REST'
,p_url=>'skipper.cs.utexas.edu:5001/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(17886158625238348077)
,p_ws_id=>wwv_flow_api.id(17886158432636348069)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(17886158953093348081)
,p_ws_opers_id=>wwv_flow_api.id(17886158625238348077)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(17955452923691867425)
,p_parameter_id=>wwv_flow_api.id(17886158953093348081)
,p_process_id=>wwv_flow_api.id(17955446504386867415)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18147712070246385170)
,p_parameter_id=>wwv_flow_api.id(17886158953093348081)
,p_process_id=>wwv_flow_api.id(18147695648956385158)
,p_map_type=>'ITEM'
,p_parm_value=>'P7_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18148417381217284859)
,p_parameter_id=>wwv_flow_api.id(17886158953093348081)
,p_process_id=>wwv_flow_api.id(18148411034337284851)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18149654701555511618)
,p_parameter_id=>wwv_flow_api.id(17886158953093348081)
,p_process_id=>wwv_flow_api.id(18149651542454511614)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18150024459798550986)
,p_parameter_id=>wwv_flow_api.id(17886158953093348081)
,p_process_id=>wwv_flow_api.id(18150021230835550982)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18150357093282390476)
,p_parameter_id=>wwv_flow_api.id(17886158953093348081)
,p_process_id=>wwv_flow_api.id(18150353817389390473)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18150471705348561698)
,p_parameter_id=>wwv_flow_api.id(17886158953093348081)
,p_process_id=>wwv_flow_api.id(18150468557128561695)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18150491489425565737)
,p_parameter_id=>wwv_flow_api.id(17886158953093348081)
,p_process_id=>wwv_flow_api.id(18150488226303565734)
,p_map_type=>'ITEM'
,p_parm_value=>'P13_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18150531331054568895)
,p_parameter_id=>wwv_flow_api.id(17886158953093348081)
,p_process_id=>wwv_flow_api.id(18150528191730568892)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18150553861345405437)
,p_parameter_id=>wwv_flow_api.id(17886158953093348081)
,p_process_id=>wwv_flow_api.id(18150550604475405433)
,p_map_type=>'ITEM'
,p_parm_value=>'P15_QUERY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(17886159241115348082)
,p_ws_opers_id=>wwv_flow_api.id(17886158625238348077)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(17886211460422354417)
,p_ws_opers_id=>wwv_flow_api.id(17886158625238348077)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(17955447306199867420)
,p_parameter_id=>wwv_flow_api.id(17886211460422354417)
,p_process_id=>wwv_flow_api.id(17955446504386867415)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18147696475867385164)
,p_parameter_id=>wwv_flow_api.id(17886211460422354417)
,p_process_id=>wwv_flow_api.id(18147695648956385158)
,p_map_type=>'ITEM'
,p_parm_value=>'P7_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18148411746348284853)
,p_parameter_id=>wwv_flow_api.id(17886211460422354417)
,p_process_id=>wwv_flow_api.id(18148411034337284851)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18149651971273511615)
,p_parameter_id=>wwv_flow_api.id(17886211460422354417)
,p_process_id=>wwv_flow_api.id(18149651542454511614)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18150021663436550984)
,p_parameter_id=>wwv_flow_api.id(17886211460422354417)
,p_process_id=>wwv_flow_api.id(18150021230835550982)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18150354244605390474)
,p_parameter_id=>wwv_flow_api.id(17886211460422354417)
,p_process_id=>wwv_flow_api.id(18150353817389390473)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18150468966706561696)
,p_parameter_id=>wwv_flow_api.id(17886211460422354417)
,p_process_id=>wwv_flow_api.id(18150468557128561695)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18150488650552565734)
,p_parameter_id=>wwv_flow_api.id(17886211460422354417)
,p_process_id=>wwv_flow_api.id(18150488226303565734)
,p_map_type=>'ITEM'
,p_parm_value=>'P13_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18150528501008568893)
,p_parameter_id=>wwv_flow_api.id(17886211460422354417)
,p_process_id=>wwv_flow_api.id(18150528191730568892)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18150551026372405435)
,p_parameter_id=>wwv_flow_api.id(17886211460422354417)
,p_process_id=>wwv_flow_api.id(18150550604475405433)
,p_map_type=>'ITEM'
,p_parm_value=>'P15_DB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(17886211714440354417)
,p_ws_opers_id=>wwv_flow_api.id(17886158625238348077)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(17955448157208867421)
,p_parameter_id=>wwv_flow_api.id(17886211714440354417)
,p_process_id=>wwv_flow_api.id(17955446504386867415)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18147697275680385166)
,p_parameter_id=>wwv_flow_api.id(17886211714440354417)
,p_process_id=>wwv_flow_api.id(18147695648956385158)
,p_map_type=>'ITEM'
,p_parm_value=>'P7_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18148412591960284854)
,p_parameter_id=>wwv_flow_api.id(17886211714440354417)
,p_process_id=>wwv_flow_api.id(18148411034337284851)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18149652327384511616)
,p_parameter_id=>wwv_flow_api.id(17886211714440354417)
,p_process_id=>wwv_flow_api.id(18149651542454511614)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18150022003791550984)
,p_parameter_id=>wwv_flow_api.id(17886211714440354417)
,p_process_id=>wwv_flow_api.id(18150021230835550982)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18150354629801390475)
,p_parameter_id=>wwv_flow_api.id(17886211714440354417)
,p_process_id=>wwv_flow_api.id(18150353817389390473)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18150469325576561696)
,p_parameter_id=>wwv_flow_api.id(17886211714440354417)
,p_process_id=>wwv_flow_api.id(18150468557128561695)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18150489062575565735)
,p_parameter_id=>wwv_flow_api.id(17886211714440354417)
,p_process_id=>wwv_flow_api.id(18150488226303565734)
,p_map_type=>'ITEM'
,p_parm_value=>'P13_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18150528989734568893)
,p_parameter_id=>wwv_flow_api.id(17886211714440354417)
,p_process_id=>wwv_flow_api.id(18150528191730568892)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18150551411308405435)
,p_parameter_id=>wwv_flow_api.id(17886211714440354417)
,p_process_id=>wwv_flow_api.id(18150550604475405433)
,p_map_type=>'ITEM'
,p_parm_value=>'P15_USER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(17886212059447354418)
,p_ws_opers_id=>wwv_flow_api.id(17886158625238348077)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(17955448975421867422)
,p_parameter_id=>wwv_flow_api.id(17886212059447354418)
,p_process_id=>wwv_flow_api.id(17955446504386867415)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18147708051497385166)
,p_parameter_id=>wwv_flow_api.id(17886212059447354418)
,p_process_id=>wwv_flow_api.id(18147695648956385158)
,p_map_type=>'ITEM'
,p_parm_value=>'P7_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18148413395580284855)
,p_parameter_id=>wwv_flow_api.id(17886212059447354418)
,p_process_id=>wwv_flow_api.id(18148411034337284851)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18149652799914511617)
,p_parameter_id=>wwv_flow_api.id(17886212059447354418)
,p_process_id=>wwv_flow_api.id(18149651542454511614)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18150022491894550985)
,p_parameter_id=>wwv_flow_api.id(17886212059447354418)
,p_process_id=>wwv_flow_api.id(18150021230835550982)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18150355035313390475)
,p_parameter_id=>wwv_flow_api.id(17886212059447354418)
,p_process_id=>wwv_flow_api.id(18150353817389390473)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18150469799715561697)
,p_parameter_id=>wwv_flow_api.id(17886212059447354418)
,p_process_id=>wwv_flow_api.id(18150468557128561695)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18150489487405565735)
,p_parameter_id=>wwv_flow_api.id(17886212059447354418)
,p_process_id=>wwv_flow_api.id(18150488226303565734)
,p_map_type=>'ITEM'
,p_parm_value=>'P13_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18150529377251568893)
,p_parameter_id=>wwv_flow_api.id(17886212059447354418)
,p_process_id=>wwv_flow_api.id(18150528191730568892)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18150551855026405436)
,p_parameter_id=>wwv_flow_api.id(17886212059447354418)
,p_process_id=>wwv_flow_api.id(18150550604475405433)
,p_map_type=>'ITEM'
,p_parm_value=>'P15_PASS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(17886212312690354418)
,p_ws_opers_id=>wwv_flow_api.id(17886158625238348077)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(17955449777752867423)
,p_parameter_id=>wwv_flow_api.id(17886212312690354418)
,p_process_id=>wwv_flow_api.id(17955446504386867415)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18147708828367385167)
,p_parameter_id=>wwv_flow_api.id(17886212312690354418)
,p_process_id=>wwv_flow_api.id(18147695648956385158)
,p_map_type=>'ITEM'
,p_parm_value=>'P7_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18148414187057284856)
,p_parameter_id=>wwv_flow_api.id(17886212312690354418)
,p_process_id=>wwv_flow_api.id(18148411034337284851)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18149653173774511617)
,p_parameter_id=>wwv_flow_api.id(17886212312690354418)
,p_process_id=>wwv_flow_api.id(18149651542454511614)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18150022828921550985)
,p_parameter_id=>wwv_flow_api.id(17886212312690354418)
,p_process_id=>wwv_flow_api.id(18150021230835550982)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18150355445064390475)
,p_parameter_id=>wwv_flow_api.id(17886212312690354418)
,p_process_id=>wwv_flow_api.id(18150353817389390473)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18150470166025561697)
,p_parameter_id=>wwv_flow_api.id(17886212312690354418)
,p_process_id=>wwv_flow_api.id(18150468557128561695)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18150489847783565736)
,p_parameter_id=>wwv_flow_api.id(17886212312690354418)
,p_process_id=>wwv_flow_api.id(18150488226303565734)
,p_map_type=>'ITEM'
,p_parm_value=>'P13_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18150529743544568894)
,p_parameter_id=>wwv_flow_api.id(17886212312690354418)
,p_process_id=>wwv_flow_api.id(18150528191730568892)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18150552291189405436)
,p_parameter_id=>wwv_flow_api.id(17886212312690354418)
,p_process_id=>wwv_flow_api.id(18150550604475405433)
,p_map_type=>'ITEM'
,p_parm_value=>'P15_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(17886212643350354418)
,p_ws_opers_id=>wwv_flow_api.id(17886158625238348077)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(17955450526484867423)
,p_parameter_id=>wwv_flow_api.id(17886212643350354418)
,p_process_id=>wwv_flow_api.id(17955446504386867415)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18147709617702385168)
,p_parameter_id=>wwv_flow_api.id(17886212643350354418)
,p_process_id=>wwv_flow_api.id(18147695648956385158)
,p_map_type=>'ITEM'
,p_parm_value=>'P7_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18148414992584284856)
,p_parameter_id=>wwv_flow_api.id(17886212643350354418)
,p_process_id=>wwv_flow_api.id(18148411034337284851)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18149653539671511617)
,p_parameter_id=>wwv_flow_api.id(17886212643350354418)
,p_process_id=>wwv_flow_api.id(18149651542454511614)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18150023242056550985)
,p_parameter_id=>wwv_flow_api.id(17886212643350354418)
,p_process_id=>wwv_flow_api.id(18150021230835550982)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18150355895549390475)
,p_parameter_id=>wwv_flow_api.id(17886212643350354418)
,p_process_id=>wwv_flow_api.id(18150353817389390473)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18150470588493561697)
,p_parameter_id=>wwv_flow_api.id(17886212643350354418)
,p_process_id=>wwv_flow_api.id(18150468557128561695)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18150490242373565736)
,p_parameter_id=>wwv_flow_api.id(17886212643350354418)
,p_process_id=>wwv_flow_api.id(18150488226303565734)
,p_map_type=>'ITEM'
,p_parm_value=>'P13_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18150530102931568894)
,p_parameter_id=>wwv_flow_api.id(17886212643350354418)
,p_process_id=>wwv_flow_api.id(18150528191730568892)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18150552693134405436)
,p_parameter_id=>wwv_flow_api.id(17886212643350354418)
,p_process_id=>wwv_flow_api.id(18150550604475405433)
,p_map_type=>'ITEM'
,p_parm_value=>'P15_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(17886212929527354418)
,p_ws_opers_id=>wwv_flow_api.id(17886158625238348077)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(17955451306103867424)
,p_parameter_id=>wwv_flow_api.id(17886212929527354418)
,p_process_id=>wwv_flow_api.id(17955446504386867415)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18147710467830385169)
,p_parameter_id=>wwv_flow_api.id(17886212929527354418)
,p_process_id=>wwv_flow_api.id(18147695648956385158)
,p_map_type=>'ITEM'
,p_parm_value=>'P7_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18148415710884284857)
,p_parameter_id=>wwv_flow_api.id(17886212929527354418)
,p_process_id=>wwv_flow_api.id(18148411034337284851)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18149653940814511618)
,p_parameter_id=>wwv_flow_api.id(17886212929527354418)
,p_process_id=>wwv_flow_api.id(18149651542454511614)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18150023667524550986)
,p_parameter_id=>wwv_flow_api.id(17886212929527354418)
,p_process_id=>wwv_flow_api.id(18150021230835550982)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18150356273828390476)
,p_parameter_id=>wwv_flow_api.id(17886212929527354418)
,p_process_id=>wwv_flow_api.id(18150353817389390473)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18150470927432561698)
,p_parameter_id=>wwv_flow_api.id(17886212929527354418)
,p_process_id=>wwv_flow_api.id(18150468557128561695)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18150490630710565736)
,p_parameter_id=>wwv_flow_api.id(17886212929527354418)
,p_process_id=>wwv_flow_api.id(18150488226303565734)
,p_map_type=>'ITEM'
,p_parm_value=>'P13_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18150530549368568894)
,p_parameter_id=>wwv_flow_api.id(17886212929527354418)
,p_process_id=>wwv_flow_api.id(18150528191730568892)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18150553023258405437)
,p_parameter_id=>wwv_flow_api.id(17886212929527354418)
,p_process_id=>wwv_flow_api.id(18150550604475405433)
,p_map_type=>'ITEM'
,p_parm_value=>'P15_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(17886213276820354419)
,p_ws_opers_id=>wwv_flow_api.id(17886158625238348077)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(17955452130857867425)
,p_parameter_id=>wwv_flow_api.id(17886213276820354419)
,p_process_id=>wwv_flow_api.id(17955446504386867415)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18147711265003385170)
,p_parameter_id=>wwv_flow_api.id(17886213276820354419)
,p_process_id=>wwv_flow_api.id(18147695648956385158)
,p_map_type=>'ITEM'
,p_parm_value=>'P7_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18148416519971284858)
,p_parameter_id=>wwv_flow_api.id(17886213276820354419)
,p_process_id=>wwv_flow_api.id(18148411034337284851)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18149654388670511618)
,p_parameter_id=>wwv_flow_api.id(17886213276820354419)
,p_process_id=>wwv_flow_api.id(18149651542454511614)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18150024082276550986)
,p_parameter_id=>wwv_flow_api.id(17886213276820354419)
,p_process_id=>wwv_flow_api.id(18150021230835550982)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18150356605017390476)
,p_parameter_id=>wwv_flow_api.id(17886213276820354419)
,p_process_id=>wwv_flow_api.id(18150353817389390473)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18150471377218561698)
,p_parameter_id=>wwv_flow_api.id(17886213276820354419)
,p_process_id=>wwv_flow_api.id(18150468557128561695)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18150491096738565737)
,p_parameter_id=>wwv_flow_api.id(17886213276820354419)
,p_process_id=>wwv_flow_api.id(18150488226303565734)
,p_map_type=>'ITEM'
,p_parm_value=>'P13_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18150530913883568894)
,p_parameter_id=>wwv_flow_api.id(17886213276820354419)
,p_process_id=>wwv_flow_api.id(18150528191730568892)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18150553462812405437)
,p_parameter_id=>wwv_flow_api.id(17886213276820354419)
,p_process_id=>wwv_flow_api.id(18150550604475405433)
,p_map_type=>'ITEM'
,p_parm_value=>'P15_RETURNFOR'
);
end;
/
prompt --application/deployment/definition
begin
null;
end;
/
prompt --application/deployment/install
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done