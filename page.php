<?php get_header(); ?>
      <section id="contents">
        <?php
          if(have_posts()):
            while(have_posts()):
              the_post();
              the_content();
            endwhile;
          endif;
        ?>
      </section><!-- #contents end -->
      <?php get_sidebar(); ?>
    <?php get_footer(); ?>