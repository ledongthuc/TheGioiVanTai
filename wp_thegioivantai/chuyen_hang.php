<?php get_header(); ?>

</header>
<div>Post Type Chuyen Hang</div>
<div class="art-sheet clearfix">
	<div class="art-layout-wrapper clearfix">

<div class="art-content-layout">
	<div class="art-content-layout-row">
		<div class="art-post art-article">
            <div class="filterbox">
				<form action='<?php bloginfo('url'); ?>/?cat=2' method="post">
                <fieldset id="fieldsetfrom">
                    <label><strong>Loại Xe:</strong></label>
                     <select name="vtid" id="vtid">
						<option value="Xe tải">Xe tải</option>
						<option value="Xe Ben">Xe Ben</option>
						<option value="7">Xe Container</option>
						<option value="10">Chuyên dụng</option>
						<option value="15">Siêu trường - Siêu trọng</option>
						<option value="20">Xe bồn</option>
						<option value="30">Xe cẩu</option>
						<option value="0" selected="selected">Xe khác</option>
					</select>
					<label><strong>Chạy từ:</strong></label>
					<select name="ptid" id="ptid">
						<option value="1">An giang</option>
						<option value="2">Bà Rịa Vũng Tàu</option>
						<option value="3">Bạc Liêu</option>
						<option value="4">Bắc Kạn</option>
						<option value="5">Bắc Giang</option>
						<option value="6">Bắc Ninh</option>
						<option value="7">Bến Tre</option>
						<option value="Bình Dương">Bình Dương</option>
						<option value="9">Bình Định</option>
						<option value="10">Bình Phước</option>
						<option value="0" selected="selected">Tỉnh/thành...</option>
					</select>
				</fieldset>
				<fieldset id="fieldsetto">
					<label><strong>Điểm đến</strong></label>
					<select name="dtid" id="dtid">
						<option value="An giang">An giang</option>
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
					<input type="submit" value="Tìm" class="btn btn-m submit btnSearch  ">
				</fieldset>
				</form>
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
                        <th style="width: 111px;" rowspan="1" colspan="1">
                            <div class="yui-dt-liner">
                                <span class="yui-dt-label">
                                    Mô  tả chi tiết</span></div>
                        </th>
                        <th style="width: 75px;" rowspan="1" colspan="1">
                            <div class="yui-dt-liner">
                                <span class="yui-dt-label">
                                    Chiều đi</span></div>
                        </th>
                        <th rowspan="1" colspan="1">
                            <div class="yui-dt-liner">
                                <span class="yui-dt-label">
                                    Ngày
                                    Giờ</span></div>
                        </th>
                        <th style="width: 77px;" rowspan="1" colspan="1">
                            <div class="yui-dt-liner">
                                <span class="yui-dt-label">
                                    Giá</span></div>
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
					
					$loaiXe = $_POST["vtid"]?'':'0';
					$diemDi = $_POST["ptid"]?'':'0';
					$diemDen = $_POST["dtid"]?'':'0';
					
					echo '<div>Xe:'.$loaiXe.' Di:'.$diemDi.' Den:'.$diemDen.'</div>';
					
					if ($loaiXe == '0' && $diemDi == '0' && $diemDen == '0')
					{
						$args = array(
									   'cat' => '2',
									   'post_type' => 'post',
									   'posts_per_page' => 2,
									   'paged' => ( get_query_var('paged') ? get_query_var('paged') : 1),
									   );
						echo '<div>Buoi</div>';
					}
					else
					{
						$args = array(
								   'cat' => '2',
								   'post_type' => 'post',
								   'posts_per_page' => 3,
								   'paged' => ( get_query_var('paged') ? get_query_var('paged') : 1),
								   'meta_query' => array(
													'relation' => 'OR',
													array(
														'key' => 'Loại xe',
														'value' => $loaiXe,
														'compare' => '='
												   ),
												   array(
														'key' => 'Đi từ',
														'value' => $diemDi,
														'compare' => '='
												   ),
												   array(
														'key' => 'Đến',
														'value' => $diemDen,
														'compare' => '='
												   )),
								   );
					}
					
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
									Xe đi
								</a>
							</div>
						</td>
						<td>
							<div class="yui-dt-liner">
								<?php echo get_post_meta($post->ID, "Ngày giờ", true); ?>
							</div>
						</td>
						<td align="right">
							<div class="yui-dt-liner">
								<?php echo get_post_meta($post->ID, "Giá", true); ?>
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