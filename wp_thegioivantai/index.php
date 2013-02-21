<?php get_header(); ?>

</header>
<div class="art-sheet clearfix">
	<div class="art-layout-wrapper clearfix">

<div class="art-content-layout">
	<div class="art-content-layout-row">
		<div class="art-layout-cell art-content clearfix">
			<article class="art-post art-article">
				<div class="art-postcontent art-postcontent-0 clearfix">
					<div class="art-content-layout-wrapper layout-item-0">
						<div class="art-content-layout">
							<div class="art-content-layout-row">
								<div class="art-layout-cell layout-item-1" style="width: 100%" >
									<h3>Danh mục Hàng hóa mới nhất</h3>
									<table id="one-column-emphasis" summary="2007 Major IT Companies' Profit" width="100%" border="0px">
										<thead>
											<tr>
												<th width="10%" scope="col"></th>
												<th width="13%" scope="col"></th>
												<th width="67%" scope="col"></th>
												<th width="10%" scope="col"></th>
											</tr>
										</thead>
										<tbody>
										<?php query_posts('showposts=5&post_type=chuyen_hang'); ?>
										<?php while (have_posts()) : the_post(); ?>
											<tr>
												<td>
													<div class="yui-dt-liner">
														<a href="<?php the_permalink(); ?>"><?php echo get_field("code"); ?></a>
													</div>
												</td>
												<td>
													<div class="thumbsforhomepage">
														<img alt="" src="<?php bloginfo('template_directory');?>/img/icon_load60x40.png">
													</div>
												</td>
												<td>
													<a href="<?php the_permalink(); ?>">
														<strong>Từ: </strong>
														<?php echo get_field("from"); ?><strong class="muiten">→</strong><span> Đến: </span>
														<?php echo get_field("to"); ?>
														<img alt="" src="<?php bloginfo('template_directory');?>/img/icon_new_1.gif"> 
														<br>
														<strong>Ngày Giao: </strong><?php echo get_field("delivery_date"); ?>
													</a>
												</td>
												<td>
													<a href="<?php the_permalink(); ?>">
														<img src="<?php bloginfo('template_directory');?>/img/xem.png" alt=""></a>
												</td>
											</tr>
											<?php endwhile; ?>
										</tbody>
										<tfoot>
											<tr>
												<td align="right" colspan="4" class="tfoot">
												   <a href="<?php bloginfo('url'); ?>/?cat=3"><strong>Tìm hàng</strong></a>
												</td>
												
											</tr>
										</tfoot>
									</table>      
				
									<!--<h3>Kho bãi mới nhất</h3>
									<table id="one-column-emphasis" summary="2007 Major IT Companies' Profit" width="100%">
										<thead>
											<tr>
												<th width="10%" scope="col"></th>
												<th width="13%" scope="col"></th>
												<th width="67%" scope="col"></th>
												<th width="10%" scope="col"></th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>
													<div class="yui-dt-liner">
														<a href="/Storage/Details/2006/Cho-thue-Kho--Bac-Ninh-Bac-Ninh">K002006</a>
													</div>
												</td>
												<td>
													<div class="thumbsforhomepage">
														<a href="/Storage/Details/2006/Cho-thue-Kho--Bac-Ninh-Bac-Ninh">
														<img src="http://www.letgo24.com/Content01/images/icons/kho_ico.gif" alt=""></a>
													</div>
												</td>
												<td>
													<a href="/Storage/Details/2006/Cho-thue-Kho--Bac-Ninh-Bac-Ninh">
													<strong>Cho thuê </strong><br>
															Kho thường, cụm công nghiệp Tân Hồng |Bắc Ninh | Bắc Ninh
													<br><strong>Diện tích: </strong>8,000m2, <br><strong>Giá: </strong>45,000 VND/M2
													<br> 
													
													<img alt="" src="http://www.letgo24.com/Content01/images/icons/icon_new_1.gif"> 
													
												   
													</a>
												</td>
												<td>
													<a href="/Storage/Details/2006/Cho-thue-Kho--Bac-Ninh-Bac-Ninh">
														<img src="http://www.letgo24.com/Content01/images/xem.png" alt=""></a>
												</td>
											</tr>
		
											<tr>
												<td>
													<div class="yui-dt-liner">
														<a href="/Storage/Details/2006/Cho-thue-Kho--Bac-Ninh-Bac-Ninh">K002006</a>
													</div>
												</td>
												<td>
													<div class="thumbsforhomepage">
														<a href="/Storage/Details/2006/Cho-thue-Kho--Bac-Ninh-Bac-Ninh">
														<img src="http://www.letgo24.com/Content01/images/icons/kho_ico.gif" alt=""></a>
													</div>
												</td>
												<td>
													<a href="/Storage/Details/2006/Cho-thue-Kho--Bac-Ninh-Bac-Ninh">
													<strong>Cho thuê </strong><br>
															Kho thường, cụm công nghiệp Tân Hồng |Bắc Ninh | Bắc Ninh
													<br><strong>Diện tích: </strong>8,000m2, <br><strong>Giá: </strong>45,000 VND/M2
													<br> 
													
													<img alt="" src="http://www.letgo24.com/Content01/images/icons/icon_new_1.gif"> 
													
												   
													</a>
												</td>
												<td>
													<a href="/Storage/Details/2006/Cho-thue-Kho--Bac-Ninh-Bac-Ninh">
														<img src="http://www.letgo24.com/Content01/images/xem.png" alt=""></a>
												</td>
											</tr>
		
											<tr>
												<td>
													<div class="yui-dt-liner">
														<a href="/Storage/Details/2006/Cho-thue-Kho--Bac-Ninh-Bac-Ninh">K002006</a>
													</div>
												</td>
												<td>
													<div class="thumbsforhomepage">
														<a href="/Storage/Details/2006/Cho-thue-Kho--Bac-Ninh-Bac-Ninh">
														<img src="http://www.letgo24.com/Content01/images/icons/kho_ico.gif" alt=""></a>
													</div>
												</td>
												<td>
													<a href="/Storage/Details/2006/Cho-thue-Kho--Bac-Ninh-Bac-Ninh">
													<strong>Cho thuê </strong><br>
															Kho thường, cụm công nghiệp Tân Hồng |Bắc Ninh | Bắc Ninh
													<br><strong>Diện tích: </strong>8,000m2, <br><strong>Giá: </strong>45,000 VND/M2
													<br> 
													
													<img alt="" src="http://www.letgo24.com/Content01/images/icons/icon_new_1.gif"> 
													
												   
													</a>
												</td>
												<td>
													<a href="/Storage/Details/2006/Cho-thue-Kho--Bac-Ninh-Bac-Ninh">
														<img src="http://www.letgo24.com/Content01/images/xem.png" alt=""></a>
												</td>
											</tr>
										</tbody>
										<tfoot>
											<tr>
												<td align="right" colspan="4" class="tfoot">
													<a href="/Storage/list"><strong>T�m kho</strong></a>
												</td>
											</tr>
										</tfoot>
									</table>-->
				
									<h3>Chuyến xe mới nhất</h3>
									<table id="one-column-emphasis" summary="2007 Major IT Companies' Profit" width="100%">
										<thead>
											<tr>
												<th width="10%" scope="col"></th>
												<th width="13%" scope="col"></th>
												<th width="67%" scope="col"></th>
												<th width="10%" scope="col"></th>
											</tr>
										</thead>
										<tbody>
											<?php query_posts('showposts=5&post_type=chuyen_xe'); ?>
											<?php while (have_posts()) : the_post(); ?>
											<tr>
												<td>
													<div class="yui-dt-liner">
													  <a href="<?php the_permalink(); ?>">
													   <?php echo get_field("code"); ?>
													   </a></div>
												</td>
												<td>
													<div class="thumbsforhomepage">
													<img width="60" height="40" src="<?php bloginfo('template_directory');?>/img/1.gif" alt="">
													</div>
												</td>
												<td>
													<a href="<?php the_permalink(); ?>"><strong>Từ: </strong>
														<?php echo get_field("from"); ?>
														
														|<strong class="muiten">→</strong><span> Đến: </span>
														<?php echo get_field("to"); ?>
														
														 
														<img alt="" src="<?php bloginfo('template_directory');?>/img/icon_new_1.gif"> 
														
														
														<br>
														<strong>Ngày Giao: </strong>
														<?php echo get_field("delivery_date"); ?>
														<br><strong>Giá: </strong><?php echo get_field("price"); ?>
													</a>
												</td>
												<td>
													<a href="<?php the_permalink(); ?>">
														<img src="<?php bloginfo('template_directory');?>/img/xem.png" alt=""></a>
												</td>
											</tr>
											<?php endwhile; ?>
										</tbody>
										<tfoot>
											<tr>
												<td align="right" colspan="4" class="tfoot">
													<a href="<?php bloginfo('url'); ?>/?cat=2"><strong>Tìm xe</strong></a>
												</td>
												
											</tr>
										</tfoot>
									</table>

                           <div id="tabs">
                              <ul>
                                 <span class="title">Tìm kiếm theo địa phương</span>
                                 <li class="tab-name"><a href="#tabs-1">Xe</a></li>
                                 <li class="tab-name"><a href="#tabs-2">Hàng Hóa</a></li>
                                 <li class="tab-name"><a href="#tabs-3">Kho Bãi</a></li>
                              </ul>
                              <div id="tabs-1">
                                <div class="wrapper">
                                    <ul class="list1 fleft">
                                    <?php
                                        if(isset($enum_province) == true && count($enum_province) > 0) {
                                            foreach($enum_province as $key => $value) {
                                                  print_r("<li style='width: 140px; float: left'><a href='". get_home_url() ."/?cat=2&ptid=" . $key . "'>" . $value . "</a> </li>");
                                            }
                                        }
                                     ?>
                                     </ul>
                                 </div>
                                 <div style="clear: both"></div>
                              </div>
                              <div id="tabs-2">
                                 <div class="wrapper">
                                    <ul class="list1 fleft">
                                    <?php
                                        if(isset($enum_province) == true && count($enum_province) > 0) {
                                            foreach($enum_province as $key => $value) {
                                                  print_r("<li style='width: 140px; float: left'><a href='". get_home_url() ."/?cat=3&ptid=" . $key . "'>" . $value . "</a> </li>");
                                            }
                                        }
                                     ?>
                                     </ul>
                                 </div>
                                 <div style="clear: both"></div>
                              </div>
                              <div id="tabs-3">
                                 <div class="wrapper">
                                    <ul class="list1 fleft">
                                    <?php
                                        if(isset($enum_province) == true && count($enum_province) > 0) {
                                            foreach($enum_province as $key => $value) {
                                                  print_r("<li style='width: 140px; float: left'><a href='". get_home_url() ."/?cat=5&ptid=" . $key . "'>" . $value . "</a> </li>");
                                            }
                                        }
                                     ?>
                                     </ul>
                                 </div>
                                 <div style="clear: both"></div>
                              </div>
                           </div>

									<div class="box1" id="tabs">
										<div class="inner">
											
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="art-content-layout-wrapper layout-item-0" style="width: 67%">
						<div class="art-content-layout layout-item-2">
							<div class="art-content-layout-row">
								<div class="art-layout-cell layout-item-3" style="width: 33%" >
									<p><img width="58" height="151" alt="" src="<?php bloginfo('template_directory');?>/img/1-3.png" style="float:left;margin: 0 10px 0 -10px;"></p>
									<h1><center>Xe</center></h1>
									<p><center><a href="<?php bloginfo('url'); ?>/?cat=2" class="art-button">Tìm xe</a></center></p>
								</div>
								<div class="art-layout-cell layout-item-4" style="width: 34%" >
									<p><img width="58" height="151" alt="" src="<?php bloginfo('template_directory');?>/img/2-2.png" style="float:left;margin: 0 10px 0 -10px;"></p>
									<h1><center>Hàng</center></h1>
									<p><center><a href="<?php bloginfo('url'); ?>/?cat=3" class="art-button">Tìm hàng</a></center></p>
								</div>
								<!--<div class="art-layout-cell layout-item-5" style="width: 33%" >
									<p><img width="58" height="151" alt="" src="<?php bloginfo('template_directory');?>/img/3-2.png" style="float:left;margin: 0 10px 0 -10px;"></p>
									<h1><center>Kho</center></h1>
									<p><center><a href="#" class="art-button">Tìm kho</a></center></p>
								</div>-->
							</div>
						</div>
					</div>
				</div>
			</article>
		</div>
		<div class="art-layout-cell art-sidebar1 clearfix">
			<?php get_sidebar(); ?>

<?php get_footer(); ?>
