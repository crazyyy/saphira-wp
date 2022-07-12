<?php
/**
 * Template part for displaying posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package WordPress
 * @subpackage Twenty_Twenty_One
 * @since Twenty Twenty-One 1.0
 */

?>

<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>

	<header class="entry-header alignwide">
		<?php the_title( '<h1 class="entry-title">', '</h1>' ); ?>
		<?php twenty_twenty_one_post_thumbnail(); ?>
	</header><!-- .entry-header -->

	<div class="entry-content">

    <div class="entry-gallery">
      <?php
      /*
      *  Create the Markup for a slider
      *  This example will create the Markup for Flexslider (http://www.woothemes.com/flexslider/)
      */
      $property_images = get_field('photo');
      if( $property_images ) { ?>
        <div id="slider" class="flexslider">
          <ul class="slides">
            <?php foreach( $property_images as $property_image ): ?>
              <li>
                <img src="<?php echo $property_image['url']; ?>" alt="<?php echo $property_image['alt']; ?>" />
              </li>
            <?php endforeach; ?>
          </ul>
        </div>
        <?php

        /*
        *  The following code creates the thumbnail navigation
        */

        ?>
        <div id="carousel" class="flexslider">
          <ul class="slides">
            <?php foreach( $property_images as $property_image ): ?>
              <li>
                <img src="<?php echo $property_image['sizes']['thumbnail']; ?>" alt="<?php echo $property_image['alt']; ?>" />
              </li>
            <?php endforeach; ?>
          </ul>
        </div>
        <?php
      } else { ?>
        <div id="single-gallery-image">
          <?php the_post_thumbnail('full'); ?>
        </div><?php
        ?>
      <?php } ?>
      <!-- End Photo Slider -->
    </div>><!-- .entry-gallery -->

    <table>
      <?php
        $date_today = new DateTime("now");
        $date_birthdate = new DateTime(get_field('date_of_birth'));
        $pet_age = $date_today->diff($date_birthdate);
      ?>
      <tr>
        <td>Age</td>
        <td><?php echo $pet_age->y . " years, " . $pet_age->m." months, ".$pet_age->d." days "; ?></td>
      </tr>
      <tr>
        <td>Birth Date</td>
        <td><?php the_field('date_of_birth'); ?></td>
      </tr>
      <tr>
        <td>Date Add</td>
        <td><?php echo get_the_date(); ?></td>
      </tr>
      <?php if ($gender = get_field('gender')) {?>
      <tr>
        <td>Gender</td>
        <td><?php echo $gender['label']; ?></td>
      </tr>
      <?php } ?>
      <?php if ($size = get_field('size')) {?>
        <tr>
          <td>Size</td>
          <td><?php echo $size['label']; ?></td>
        </tr>
      <?php } ?>
      <?php if ($color = get_field('color')) {?>
      <tr>
        <td>Dominated Color</td>
        <?php if ($color['value'] == 'other') { ?>
        <td style="background-color: <?php the_field('other_dominated_color'); ?>"></td>
        <?php } else { ?>
          <td style="background-color: <?php echo $color['value']; ?>"></td>
        <?php } ?>

      </tr>
      <?php } ?>
      <?php if ($tempers = get_field('temper')) {?>
        <tr>
          <td>Temper</td>
          <td><ul>
              <?php foreach( $tempers as $temper ): ?>
                <li><?php echo $temper['label']; ?></li>
              <?php endforeach; ?>
            </ul></td>
        </tr>
      <?php } ?>
    </table>

		<?php
		the_content();

		wp_link_pages(
			array(
				'before'   => '<nav class="page-links" aria-label="' . esc_attr__( 'Page', 'twentytwentyone' ) . '">',
				'after'    => '</nav>',
				/* translators: %: Page number. */
				'pagelink' => esc_html__( 'Page %', 'twentytwentyone' ),
			)
		);
		?>
	</div><!-- .entry-content -->

	<footer class="entry-footer default-max-width">
		<?php twenty_twenty_one_entry_meta_footer(); ?>
	</footer><!-- .entry-footer -->

	<?php if ( ! is_singular( 'attachment' ) ) : ?>
		<?php get_template_part( 'template-parts/post/author-bio' ); ?>
	<?php endif; ?>

</article><!-- #post-<?php the_ID(); ?> -->
