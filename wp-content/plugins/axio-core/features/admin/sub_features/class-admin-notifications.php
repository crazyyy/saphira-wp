<?php
/**
 * Class Admin_Notifications
 */
class Axio_Core_Admin_Notifications extends Axio_Core_Sub_Feature {

  public function setup() {

    // var: key
    $this->set('key', 'axio_core_admin_notifications');

    // var: name
    $this->set('name', 'Remove update nags from non-admins');

    // var: is_active
    $this->set('is_active', true);

  }

  /**
   * Run feature
   */
  public function run() {
    add_action('admin_head', array($this, 'axio_core_remove_update_nags_for_non_admins'), 1);
  }

  /**
   * Remove update nags from non-admins
   */
  public static function axio_core_remove_update_nags_for_non_admins() {
    if (!current_user_can('update_core')) {
      remove_action('admin_notices', 'update_nag', 3);
    }
  }

}
