<?php get_header(); ?>

</header>
<div class="art-sheet clearfix">
	<div class="art-layout-wrapper clearfix">
	
<div class="art-content-layout">
	<div class="art-content-layout-row">
		<div class="art-post art-article">
            <div class="filterbox">
                <fieldset id="fieldsetfrom">
                    <label><strong>Loại Xe:</strong></label>
                     <select name="vtid" id="vtid"><option value="1">Xe tải</option>
						<option value="4">Xe Ben</option>
						<option value="7">Xe Container</option>
						<option value="10">Chuyên dụng</option>
						<option value="15">Siêu trường - Siêu trọng</option>
						<option value="20">Xe bồn</option>
						<option value="30">Xe cẩu</option>
						<option value="100">Loại khác</option>
					</select>
					<label><strong>Chạy từ:</strong></label>
					<select name="ptid" id="ptid"><option value="1">An giang</option>
						<option value="2">Bà Rịa Vũng Tàu</option>
						<option value="3">Bạc Liêu</option>
						<option value="4">Bắc Kạn</option>
						<option value="5">Bắc Giang</option>
						<option value="6">Bắc Ninh</option>
						<option value="7">Bến Tre</option>
						<option value="8">Bình Dương</option>
						<option value="9">Bình Định</option>
						<option value="10">Bình Phước</option>
						<option value="0" selected="selected">Tỉnh/thành...</option>
					</select>
				</fieldset>
				<fieldset id="fieldsetto">
					<label><strong>Điểm đến</strong></label>
					<select name="dtid" id="dtid"><option value="1">An giang</option>
						<option value="2">Bà Rịa Vũng Tàu</option>
						<option value="3">Bạc Liêu</option>
						<option value="4">Bắc Kạn</option>
						<option value="5">Bắc Giang</option>
						<option value="6">Bắc Ninh</option>
						<option value="7">Bến Tre</option>
						<option value="8">Bình Dương</option>
						<option value="9">Bình Định</option>
						<option value="10">Bình Phước</option>
						<option value="0" selected="selected">Tỉnh/thành...</option>
					</select>
                <input type="button" onclick="search()" value="Tìm" class="btn btn-m submit btnSearch  ">
            </fieldset>
        </div>
		
		<div class="yui-dt">
            <div class="pagingbox">
				<span style="font-size:13px;font-weight:bold; color:Red; float:left;margin: 10px 0px">Quý khách có nhu cầu tìm xe vui lòng liên lạc hot-line: (08) 6658 3792 / 090 33 44 899.</span>
            </div>
            <table cellspacing="0" cellpadding="0" border="0" class="">
                <thead>
                    <tr class="yui-dt-first yui-dt-last">
                        <th rowspan="1" colspan="1">
                            <div class="yui-dt-liner">
                                <span class="yui-dt-label"></span></div>
                        </th>
                        <th rowspan="1" colspan="1">
                            <div class="yui-dt-liner">
                                <span class="yui-dt-label">
                                    Mã số</span></div>
                        </th>
                        <th style="width: 106px;" rowspan="1" colspan="1">
                            <div class="yui-dt-liner">
                                <span class="yui-dt-label">
                                    Đi từ</span></div>
                        </th>
                        <th style="width: 90px;" rowspan="1" colspan="1">
                            <div class="yui-dt-liner">
                                <span class="yui-dt-label">
                                    Q/H</span></div>
                        </th>
                        <th style="width: 106px;" rowspan="1" colspan="1">
                            <div class="yui-dt-liner">
                                <span class="yui-dt-label">
                                    Đến</span></div>
                        </th>
                        <th style="width: 90px;" rowspan="1" colspan="1">
                            <div class="yui-dt-liner">
                                <span class="yui-dt-label">
                                    Q/H</span></div>
                        </th>
                        <th style="width: 179px;" rowspan="1" colspan="1">
                            <div class="yui-dt-liner">
                                <span class="yui-dt-label">
                                    Loại hàng</span></div>
                        </th>
                        <th style="width: 75px;" rowspan="1" colspan="1">
                            <div class="yui-dt-liner">
                                <span class="yui-dt-label">
                                    Yêu cầu xe</span></div>
                        </th>
                        <th rowspan="1" colspan="1">
                            <div class="yui-dt-liner">
                                <span class="yui-dt-label">
                                    Ngày giao</span></div>
                        </th>
                        <th rowspan="1" colspan="1">
                            <div class="yui-dt-liner">
                                <span class="yui-dt-label">
                                    Lượt xem</span></div>
                        </th>
                    </tr>
                </thead>
				<tbody>
				<?php
					
				
					 $args = array(
								   'cat' => '3',
								   'post_type' => 'post',
								   'posts_per_page' => 1,
								   'paged' => ( get_query_var('paged') ? get_query_var('paged') : 1),
								   );

					query_posts($args);

					while (have_posts()) : the_post();
					/* Do whatever you want to do for every page... */
				?>
					<tr>
						<td>
							<div class="yui-dt-liner">
								<a href="<?php the_permalink(); ?>">
									
									<img src="<?php bloginfo('template_directory');?>/img/1.gif" alt="Xe tải">
									
								</a>
							</div>
						</td>
						<td>
							<div class="yui-dt-liner">
						 
								<a href="<?php the_permalink(); ?>">
									<?php echo get_post_meta($post->ID, "Mã số", true); ?>
								 </a>
								
							</div>
						</td>
						<td>
							<div class="yui-dt-liner">
								<a href="<?php the_permalink(); ?>" class="link-filter" title="<?php echo get_post_meta($post->ID, 'Đi từ', true); ?>">
									<?php echo get_post_meta($post->ID, "Đi từ", true); ?></a>
								
							</div>
						</td>
						<td>
							<div class="yui-dt-liner">
								<a href="<?php the_permalink(); ?>" class="link-filter" title="">
									</a>
							</div>
						</td>
						<td>
							<div class="yui-dt-liner">
								<a href="<?php the_permalink(); ?>" class="link-filter" title="Đến">
									<?php echo get_post_meta($post->ID, "Đến", true); ?></a>
								
							</div>
						</td>
						<td>
							<div class="yui-dt-liner">
								<a href="<?php the_permalink(); ?>" class="link-filter" title="">
									</a>
							</div>
						</td>
						<td>
							<div class="yui-dt-liner">
								<?php the_content(); ?>
							</div>
						</td>
						<td>
							<div class="yui-dt-liner">
								<a href="<?php the_permalink(); ?>">
									<?php echo get_post_meta($post->ID, "Loại xe", true); ?>
								</a>
							</div>
						</td>
						<td>
							<div class="yui-dt-liner">
								<?php echo get_post_meta($post->ID, "Ngày giờ", true); ?>
							</div>
						</td>						
						<td align="center">
							<div class="yui-dt-liner">
								<a title="Chi tiết" href="<?php the_permalink(); ?>">
									<img src="<?php bloginfo('template_directory');?>/img/xem.png" alt="Xem chi tiet">
								</a>
							   
							</div>
						</td>
					</tr>
                <?php endwhile; ?>
				</tbody>
			</table>
			<?php if (show_posts_nav()) : ?>
				<div class="pagingbox">
					<div class="paging">
						<?php previous_posts_link('&laquo; Previous') ?>&nbsp&nbsp&nbsp<?php next_posts_link('More &raquo;') ?>
					</div>
				</div>
			<?php endif; ?>

<?php wp_reset_query(); ?>
<?php get_footer(); ?>