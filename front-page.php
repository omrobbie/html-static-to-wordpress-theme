<?php get_header(); ?>
  <section id="contents">
    <section id="malls-pickup">
      <div class="malls-group">
        <?php
          $query_content = new WP_Query('post_per_page=-1&post_type=page&orderby=menu_order&order=asc&post_parent=43');
          if($query_content->have_posts()):
            $count=1;
            while($query_content->have_posts()):
              $query_content->the_post();
              if($count%2>0 && $count!=1):
        ?>
      </div><!-- .malls-group end -->
      <div class="malls-group">
        <?php
              endif;
        ?>
        <article>
          <h1>
            <a href="<?php the_permalink(); ?>"><?php the_title(); ?></a>
            <a href="<?php the_permalink(); ?>">
              <?php
                the_post_thumbnail(
                  'pickup_thumbnail',
                  array(
                    'alt'   => the_title_attribute('echo=0'),
                    'title' => the_title_attribute('echo=0')
                  )
                );
              ?>
            </a>
            <?php the_excerpt(); ?>
            <div class="continue-button"><a href="<?php the_permalink(); ?>">See More</a></div>
          </h1>
        </article>
        <?php
              $count++;
            endwhile;
          endif;
          wp_reset_postdata();
        ?>
      </div><!-- .malls-group end -->
    </section><!-- #malls-pickup end -->
    <section id="latest-columns">
      <h1 id="latest-columns-title">Recent Column</h1>
      <span class="link-text archive-link"><a href="#">Column List</a></span>
      <div class="column-group head">
        <article class="column-article" >
          <h1 class="update-title"><a href="#">column-title_1</a></h1>
          <time class="entry-date" datetime="2012-01-01">entry-date</time>
          <a href="#"><img width="90" height="90" src="<?php bloginfo('template_url'); ?>/images/top/column_image.png" alt="column_image" /></a>
          <p>isi artikel isi artikel isi artikel isi artikel isi artikel isi artikel...</p>
          <span class="link-text"><a href="#">Read More...</a></span>
        </article>
        <article class="column-article" >
          <h1 class="update-title"><a href="#">column-title_2</a></h1>
          <time class="entry-date" datetime="2012-01-01">entry-date</time>
          <a href="#"><img width="90" height="90" src="<?php bloginfo('template_url'); ?>/images/top/column_image.png" alt="column_image" /></a>
          <p>isi artikel isi artikel isi artikel isi artikel isi artikel isi artikel...</p>
          <span class="link-text"><a href="#">Read More...</a></span>
        </article>
      </div><!-- .column-group end -->
    </section><!-- #latest-columns end -->
  </section><!-- #contents end -->
  <?php get_sidebar('top'); ?>
<?php get_footer(); ?>