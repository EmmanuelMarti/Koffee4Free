<?php 

/**
 * Defines
 */
define('WEBROOT',dirname(__FILE__));
define('ROOT',dirname(WEBROOT));
define('DS',DIRECTORY_SEPARATOR);
define('CORE', ROOT.DS.'core');

/**
 * Vendor and all things
 */
require_once dirname(__DIR__) . '/vendor/autoload.php';
require_once dirname(__DIR__) . '/core/includes.php';

require_once 'App/Race.php';
require_once 'App/Game.php';