<?php
/**
 * The main template file
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * E.g., it puts together the home page when no home.php file exists.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package WordPress
 * @subpackage Twenty_Twenty_One
 * @since Twenty Twenty-One 1.0
 */

get_header(); ?>

<?php if ( is_home() && is_front_page() ) : ?>

  <section class="our-pets">
    <header class="page-header alignwide">
      <h1 class="page-title">Pet's in our center</h1>
    </header>

    <!-- display all category with pets-->
    <div class="entry-content">
      <h2>Animals by Species</h2>
      <p>Click on a species below and select a category to choose the animal</p>
      <?php
      $args = array( 'hide_empty=0' );
      $terms = get_terms( 'kind_of_animals', $args );
      if ( ! empty( $terms ) && ! is_wp_error( $terms ) ){
        echo '<article class="our-pets--category">';
        foreach ( $terms as $term ) {
          $image = get_field('logo', $term);
          echo '<a href="' . esc_url( get_term_link( $term ) ) . '"
                    class="our-pets--item"
                    alt="' . esc_attr( $term->name  ) . '">
                    <span class="our-pets--item">
                        <img src="'. $image['url'] .'" alt="' . esc_attr( $term->name  ) . '">
                    </span>
                    <h3 class="our-pets--title">' . $term->name . ' (' . $term->count . ')</h3>
                </a>';
        }
        echo '</article>';
      }
      ?>
    </div>

  </section>

<?php endif; ?>



<?php
get_footer();
