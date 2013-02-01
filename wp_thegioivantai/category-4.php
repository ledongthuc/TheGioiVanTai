<?php get_header(); ?>

</header>
<div class="art-sheet clearfix">
	<div class="art-layout-wrapper clearfix">
	
<div class="art-content-layout">
	<div class="art-content-layout-row">
		<div class="art-layout-cell art-content clearfix">
			<!-- Loop -->
				<?php
					 $args = array(
								   'post_type' => 'tin_tuc',
								   'posts_per_page' => 1,
								   'paged' => ( get_query_var('paged') ? get_query_var('paged') : 1),
								   );

					query_posts($args);

					while (have_posts()) : the_post();
					/* Do whatever you want to do for every page... */
				?>
				<div class="post">
					<h4 class="title"><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h4>
					<p>Post by: <a href="#"><?php the_author(); ?> </a></p>
					<div class="row post-detail">
						<?php if( has_post_thumbnail() ) : ?>
							<div class="span4 image">
								<?php the_post_thumbnail(array(353, 355)); ?>
							</div>
							<div class="span8 description"><?php the_content(); ?></div>
						<?php else : ?>
							<div class="description"><?php the_content(); ?></div>
						<?php endif; ?>
						<div class="readmore"><a href="<?php the_permalink(); ?>">Read More ></a></div>
					</div>
				</div>
			<?php endwhile; ?>
			<div></div>
			<!-- end Loop -->
			<?php if (show_posts_nav()) : ?>
				<div class="pagingbox">
					<div class="paging">
						<?php previous_posts_link('&laquo; Previous') ?>&nbsp&nbsp&nbsp<?php next_posts_link('More &raquo;') ?>
					</div>
				</div>
			<?php endif; ?>

<?php wp_reset_query(); ?>
<?php get_footer(); ?>