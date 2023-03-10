<?php
/*
  Plugin Name: Are You Payting Attention Quiz
  Description: Give your readers a multiple choice question
  Version 1.0
  Author: Natasha
  Author URI: https://www.udemy.com/user/bradschiff/
*/

if( ! defined( 'ABSPATH' ) ) exit; // Exit if accessed directly

class AreYouPayingAttention {
    function __construct()
    {
        add_action('enqueue_block_editor_assets', array($this, 'adminAssets'));
    }

    function adminAssets() {
        wp_enqueue_script('ournewblocktype', plugin_dir_url(__FILE__). 'test.js', array('wp-blocks', 'wp-element'));
    }

}
$areYouPayingAttention = new AreYouPayingAttention();