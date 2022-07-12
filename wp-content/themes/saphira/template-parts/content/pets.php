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
	<header class="entry-header">
		<?php if ( is_singular() ) : ?>
			<?php the_title( '<h1 class="entry-title default-max-width">', '</h1>' ); ?>
		<?php else : ?>
			<?php the_title( sprintf( '<h2 class="entry-title default-max-width"><a href="%s">', esc_url( get_permalink() ) ), '</a></h2>' ); ?>
		<?php endif; ?>

    <?php
    $images = get_field('photo'); // get gallery
    $image  = $images[0]; // get first image in the gallery [1] for second, [2] for third, and so on.

    if( $image ) : // only show the image if it exists ?>
      <figure class="post-thumbnail">
        <img src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>" />
      </figure>
    <?php else :
      twenty_twenty_one_post_thumbnail();
    endif; ?>
	</header><!-- .entry-header -->

  <div class="entry-content">
    <?php get_template_part( 'template-parts/excerpt/excerpt', get_post_format() ); ?>
    <div class="entry-content-additional">
      <table>
        <tr>
          <?php
            $date_today = new DateTime("now");
            $date_birthdate = new DateTime(get_field('date_of_birth'));
            $pet_age = $date_today->diff($date_birthdate);
          ?>
          <td>Add</td>
          <td><?php echo get_the_date(); ?></td>
        </tr>
        <tr>
          <td>Age</td>
          <td><?php echo $pet_age->y . " years, " . $pet_age->m." months, ".$pet_age->d." days "; ?></td>
        </tr>
      </table>
    </div>
    <!-- /.entry-content-additional -->
  </div><!-- .entry-content -->

	<footer class="entry-footer default-max-width">
		<?php twenty_twenty_one_entry_meta_footer(); ?>
	</footer><!-- .entry-footer -->
</article><!-- #post-<?php the_ID(); ?> -->
