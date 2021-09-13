<?php
$link = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ?
"https" : "http") . "://" . $_SERVER['HTTP_HOST'];
$link.= '/analytics';
return [
    'sessions' => 'Sessions',
    'visitors' => 'Visitors',
    'pageviews' => 'Pageviews',
    'bounce_rate' => 'Bounce Rate',
    'page_session' => 'Pages/Session',
    'avg_duration' => 'Avg. Duration',
    'percent_new_session' => 'Percent new session',
    'new_users' => 'New visitors',
    'visits' => 'visits',
    'views' => 'views',
    'view_id_not_specified' => "You must provide a valid view id. The document here: <a href='".$link."' target='_blank'>$link</a>",
    'credential_is_not_valid' => "Analytics credentials is not valid. The document here: <a href='".$link."' target='_blank'>$link</a>",
    'start_date_can_not_before_end_date' => 'Start date :start_date cannot be after end date :end_date',
    'wrong_configuration' => "To view analytics you'll need to get a google analytics client id and add it to your settings. <br /> You also need JSON credential data. <br /> The document here: <a href='".$link."' target='_blank'>$link</a>",
    'settings' => [
        'title' => 'Google Analytics',
        'description' => 'Config Credentials for Google Analytics',
        'tracking_code' => 'Tracking ID',
        'tracking_code_placeholder' => 'Example: GA-12586526-8',
        'view_id' => 'View ID',
        'view_id_description' => 'Google Analytics View ID',
        'json_credential' => 'Service Account Credentials',
        'json_credential_description' => 'Service Account Credentials',
    ],
    'widget_analytics_page' => 'Top Most Visit Pages',
    'widget_analytics_browser' => 'Top Browsers',
    'widget_analytics_referrer' => 'Top Referrers',
    'widget_analytics_general' => 'Site Analytics',
];
