<?php get_header(); ?>

<div class="art-content-layout">
	<div class="art-content-layout-row">
		<div class="art-layout-cell art-content clearfix">
			<!-- Loop -->
			<?php query_posts('showposts=4&cat=4'); ?>
			<?php while (have_posts()) : the_post(); ?>
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
			<!-- end Loop -->
		</div>		
	</div>
</div>

<?php get_footer(); ?>