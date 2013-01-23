<?php get_header(); ?>

<div class="container content">
        <div class="content-top">
        </div>

        <div class="content-center">
            <div class="row-fluid dynamic">
                <div class="span8 list">
					<div class="post">
						<?php if (have_posts()) : while (have_posts()) : the_post(); ?>
							<h4 class="title"><?php the_title(); ?></h4>
							<div class="entry-byline">
								<?php edit_post_link('Edit', '[', ']'); ?>
							</div>
							<span class="entry-date"><abbr class="updated" title="<?php the_time('Y-m-d\TH:i:sO'); ?>"><?php the_time('M jS, Y'); ?></abbr> <?php _e('by '); ?><a href="<?php the_author_url(); ?>"><?php the_author(); ?></a>.</span> 
							<div class="row post-detail">
								<div class="span12 description">
									<?php the_content(); ?>
									<?php wp_link_pages(array('before' => '<p><strong>Pages:</strong> ', 'after' => '</p>', 'next_or_number' => 'number')); ?>
								</div>
							</div>
						<?php endwhile; endif; ?>
                    </div>
				</div>
				
				<?php get_sidebar(); ?>
            </div>
        </div>
        <div class="content-bottom">
        </div>
    </div>

<?php get_footer(); ?>
