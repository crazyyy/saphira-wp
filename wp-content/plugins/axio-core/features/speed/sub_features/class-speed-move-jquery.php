<?php
/**
 * Class Speed_Move_Jquery
 */
class Axio_Core_Speed_Move_Jquery extends Axio_Core_Sub_Feature {

  public function setup() {

    // var: key
    $this->set('key', 'axio_core_speed_move_jquery');

    // var: name
    $this->set('name', 'Move jQuery to footer');

    // var: is_active
    $this->set('is_active', true);

  }

  /**
   * Run feature
   */
  public function run() {
    add_action('wp_default_scripts', array($this, 'axio_core_move_jquery_into_footer'));
  }

  /**
   * Move jQuery to footer
   *
   * @param WP_Scripts $wp_scripts core class for registered scripts
   */
  public static function axio_core_move_jquery_into_footer($wp_scripts) {
    if (!is_admin()) {
      $wp_scripts->add_data('jquery',         'group', 1);
      $wp_scripts->add_data('jquery-core',    'group', 1);
      $wp_scripts->add_data('jquery-migrate', 'group', 1);
    }
  }

}
