<div>Buoi single-goods.php</div>
<div class="container content">
	<div class="content-center">
		<div class="row-fluid dynamic">
			<div class="span8 list">
				<div class="post">
						<h4 class="title"><?php the_title(); ?></h4>
						<span class="entry-date"><abbr class="updated" title="<?php the_time('Y-m-d\TH:i:sO'); ?>"><?php the_time('M jS, Y'); ?></abbr> <?php _e('by '); ?><a href="<?php the_author_url(); ?>"><?php the_author(); ?></a>.</span> 
						<div class="row post-detail">
							<div class="span12 description">
								<?php the_content(); ?>
							</div>
						</div>
							
						<?php comments_template(); ?>
				</div>
			</div>
		</div>
	</div>
</div>
