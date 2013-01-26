<?php // Do not delete these lines
	if ('comments.php' == basename($_SERVER['SCRIPT_FILENAME']))
		die ('Please do not load this page directly. Thanks!');

        if (!empty($post->post_password)) { // if there's a password
            if ($_COOKIE['wp-postpass_' . COOKIEHASH] != $post->post_password) {  // and it doesn't match the cookie
				?>
				
				<p class="nocomments">This post is password protected. Enter the password to view comments.<p>
				
				<?php
				return;
            }
        }

		/* This variable is for alternating comment background */
		$oddcomment = 'alt';
?>

<!-- You can start editing here. -->

</div>
<div>
<?php if ( get_option('comment_registration') && !$user_ID ) : ?>
<p>You must be <a href="<?php echo get_option('siteurl'); ?>/wp-login.php?redirect_to=<?php the_permalink(); ?>">logged in</a> to post a comment.</p>
<?php else : ?>

<form action="<?php echo get_option('siteurl'); ?>/wp-comments-post.php" method="post" id="commentform">

<?php if ( $user_ID ) : ?>
	<p>Logged in as <a href="<?php echo get_option('siteurl'); ?>/wp-admin/profile.php"><?php echo $user_identity; ?></a></p>

<fieldset class="form entry">
	<table width="100%" border="0" style="border-collapse: separate;" class="detail comment" cellpadding="0" cellspacing="0">
		<tbody><tr>
			<td>
				<label for="CommentText">
					Ý kiến phản hồi</label>
			</td>
		</tr>
		<tr>
			<td>
				<textarea id="comment" name="comment" style="width: 90%" rows="2" tabindex="4"></textarea>
			</td>
		</tr>
		
		<tr>
			<td style="padding-right: 4px; padding-bottom: 4px">
				<input name="submit" type="submit" id="submit" tabindex="5" value="Gửi" />
				<input type="hidden" name="comment_post_ID" value="<?php echo $id; ?>" />
				<input type="hidden" name="status" value="hold" />
				<?php do_action('comment_form', $post->ID); ?>
			</td>
		</tr>
		
	</tbody></table>
</fieldset>
<?php endif; ?>

</form>
<?php endif; // If registration required and not logged in ?>

<?php
if ($user_ID)
{
	$args = array(
		'number' => '10',
		'post_id' => $post->ID, // use post_id, not post_ID
		'user_id' => $user_ID,
	);
}
else
{
	$args = array(
		'status' => 'approve',
		'number' => '10',
		'post_id' => $post->ID, // use post_id, not post_ID
	);
}

$comments = get_comments($args);
?>

<div id="listComments">
	<fieldset class="form view">
		<?php foreach ($comments as $comment) : ?>
		<table border="0" style="padding:0px;margin:1px " class="detail" cellpadding="0" cellspacing="0" width="100%">
			<tbody>
				<tr>
					<td style="width:65%; text-align:left; vertical-align:top;">
						<b><?php comment_author_link() ?>: </b>
						<?php if ($comment->comment_approved == '0') : ?>
							<em>Your comment is awaiting moderation.</em>
						<?php else: ?>
							<em><?php print get_comment_text() ?></em>
						<?php endif; ?>
					</td>
					<td style="text-align:right;vertical-align:top;">
						Vào lúc: <?php comment_date('j-n-Y') ?> <?php comment_time('H:i') ?>
					</td>
				</tr>
			</tbody>
		</table>
		<?php endforeach; /* end for each comment */ ?>
	</fieldset>
</div>
