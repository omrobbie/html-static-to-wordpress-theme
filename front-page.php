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
      <span class="link-text archive-link"><a href="<?php echo get_term_link('column', 'category'); ?>">Column List</a></span>
      <div class="column-group head">
        <?php
          $query_recent = new WP_Query('post_per_page=4&category_name=column');
          if($query_recent->have_posts()):
            $count=1;
            while($query_recent->have_posts()):
              $query_recent->the_post();
              if($count%2>0 && $count!=1):
        ?>
      </div><!-- .column-group end -->
      <div class="column-group">
        <?php
              endif;
        ?>
        <article class="column-article">
          <h1 class="update-title">
            <a href="<?php the_permalink(); ?>" title="<?php the_title_attribute(); ?>">
              <?php the_title(); ?>
            </a>
          </h1>
          <time class="entry-date" datetime="<?php the_time('Y-m-d'); ?>">
            <?php the_time(get_option('date_format')); ?>
          </time>
          <a href="<?php the_permalink(); ?>">
            <?php
              the_post_thumbnail(
                'post-thumbnail',
                array(
                  'alt'   => the_title_attribute('echo=0'),
                  'title' => the_title_attribute('echo=0')
                )
              );
            ?>
          </a>
          <?php the_excerpt(); ?>
          <span class="link-text">
            <a href="<?php the_permalink(); ?>">Read More...</a>
          </span>
        </article>
        <?php
              $count++;
            endwhile;
          endif;
          wp_reset_postdata();
        ?>
      </div><!-- .column-group end -->
    </section><!-- #latest-columns end -->
  </section><!-- #contents end -->
  <?php get_sidebar('top'); ?>
<?php get_footer(); ?>