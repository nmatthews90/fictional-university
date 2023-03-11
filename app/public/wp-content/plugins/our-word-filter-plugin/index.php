<?php 

/*
    Plugin Name: Our Word Filter Plugin
    Description: Replaces a list of words.
    Version 1.0
    Author: Natasha
    Author URI: https://www.udemy.com/course/become-a-wordpress-developer-php-javascript/learn/lecture/26880774#overview
*/

if( ! defined( 'ABSPATH')) exit; // Exit of accessed directly

class OurWordFilterPlugin {
    function __construct()
    {
        add_action('admin_menu', array($this, 'ourMenu'));
    }

    function ourMenu() {
        add_menu_page('Words To Filter', 'Word Filter', 'manage_options', 'ourwordfilter', array($this, 'wordFilterPage'), 'dashicons-smiley', 100);
        add_submenu_page('ourwordfilter', 'Words To Filter', 'Words List', 'manage_options', 'ourwordfilter', array($this, 'wordFilterPage'));
        add_submenu_page('ourwordfilter', 'Word Filter Options', 'Options', 'manage_options', 'word-filter-options', array($this, 'optionsSubPage'));
    }

    function wordFilterPage() { ?>
        hello world
    <?php }

    function optionsSubPage() { ?>
        hello world options sub page
    <?php }
}

$ourWordFilterPlugin = new OurWordFilterPlugin();

