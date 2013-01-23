<?php get_header(); ?>
<div>Buoi archive.php</div>
		<?php if (have_posts()) : ?>

		<div class="container content">
			<div class="content-top">
			</div>

			<div class="content-center">
				<!-- Begin dynamic content -->
				<div class="row-fluid dynamic">
					<div class="span8 list">
						<?php $post = $posts[0]; // Hack. Set $post so that the_date() works. ?>
						<?php /* If this is a category archive */ if (is_category()) { ?>				
						<h2 class="pagetitle">Archive for the '<?php echo single_cat_title(); ?>' Category</h2>
								
						<?php /* If this is a daily archive */ } elseif (is_day()) { ?>
						<h2 class="pagetitle">Archive for <?php the_time('F jS, Y'); ?></h2>
								
						<?php /* If this is a monthly archive */ } elseif (is_month()) { ?>
						<h2 class="pagetitle">Archive for <?php the_time('F, Y'); ?></h2>

						<?php /* If this is a yearly archive */ } elseif (is_year()) { ?>
						<h2 class="pagetitle">Archive for <?php the_time('Y'); ?></h2>
								
						<?php /* If this is a search */ } elseif (is_search()) { ?>
						<h2 class="pagetitle">Search Results</h2>
								
						<?php /* If this is an author archive */ } elseif (is_author()) { ?>
						<h2 class="pagetitle">Author Archive</h2>

						<?php /* If this is a paged archive */ } elseif (isset($_GET['paged']) && !empty($_GET['paged'])) { ?>
						<h2 class="pagetitle">Blog Archive</h2>

						<?php } ?>
				
						<!-- Loop -->
						<?php while (have_posts()) : the_post(); ?>
							<div class="post">
								<h4 class="title"><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h4>
								<p>Post by: <a href="#"><?php the_author(); ?> </a></p>
								<div class="row post-detail">
									<div class="span4 image">
										<a href="#"><img src="<?php bloginfo('template_directory');?>/img/post-image.png" alt="Lotbi Dolor Set Eros Malesuada" width="352px" height="355px" /></a>
									</div>
									<div class="span8 description"><?php the_excerpt();; ?></div>
									<div class="readmore"><a href="<?php the_permalink(); ?>">Read More ></a></div>
								</div>
							</div>
						<?php endwhile; ?>
						<!-- end Loop -->
						
						<div class="navigation">
							<div class="alignleft"><?php next_posts_link('&laquo; Previous Entries') ?></div>
							<div class="alignright"><?php previous_posts_link('Next Entries &raquo;') ?></div>
						</div>
					</div>
					
					<?php get_sidebar(); ?>
				</div>
				<!-- End dynamic content -->
			</div>
			<div class="content-bottom">
			</div>
		</div>

	<?php else : ?>

		<h2 class="center">Not Found</h2>
		<?php include (TEMPLATEPATH . '/searchform.php'); ?>

	<?php endif; ?>

<?php get_sidebar(); ?>

<?php get_footer(); ?>





<?php
	 $args = array(
				   'cat' => '5',
				   'post_type' => 'post',
				   'posts_per_page' => 6,
				   'paged' => ( get_query_var('paged') ? get_query_var('paged') : 1),
				   );

	query_posts($args);

while (have_posts()) : the_post();
 /* Do whatever you want to do for every page... */
?>
	<div class="project_item">
        <div class="dotted">
          <hr />
        </div>
        <div class="project_thumb"><a href="<?php echo get_permalink(); ?>"><img src="<?php getCustomField('news_thumbnail'); ?>"  /></a></div>
        <div class="project_entry"><h4><a href="<?php echo get_permalink(); ?>"><?php getCustomField('news_title'); ?></a></h4>
          <?php getCustomField('news_excerpt'); ?>
          <a href="<?php echo get_permalink(); ?>" class="readmore">Read more..</a> </div>
      </div>

      <?php

endwhile;
?><div class="navigation">
  <div class="alignleft"><?php previous_posts_link('&laquo; Previous') ?></div>
  <div class="alignright"><?php next_posts_link('More &raquo;') ?></div>
</div>
<?php
wp_reset_query();  // Restore global post data
?>