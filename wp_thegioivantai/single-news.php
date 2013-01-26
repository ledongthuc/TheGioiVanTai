</header>
<div class="art-sheet clearfix">
<div class="art-layout-wrapper clearfix">
<div class="art-content-layout">
	<div class="art-content-layout-row">
		<div class="art-layout-cell art-content clearfix">

<div class="content">
	<div class="content-center">
		<div class="row-fluid dynamic">
			<div>
				<div class="post">
					<h4 class="title"><?php the_title(); ?></h4>
					<span class="entry-date"><abbr class="updated" title="<?php the_time('Y-m-d\TH:i:sO'); ?>"><?php the_time('M jS, Y'); ?></abbr> <?php _e('by '); ?><a href="<?php the_author_url(); ?>"><?php the_author(); ?></a>.</span> 
					<div class="row post-detail">
						<div class="span12 description">
							<?php the_content(); ?>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
