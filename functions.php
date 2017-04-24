<?php

// custom header
$defaults = array(
	'default-image'			=> '%s/images/top/main_image.png',
	'width'					=> 950,
	'height'				=> 295,
	'default-text-color'	=> '',
	'header-text'			=> false
);
add_theme_support('custom-header', $defaults);

// mendaftarkan menu navigasi
register_nav_menus(
	array(
		'place_global'	=> 'Global Menu',
		'place_utility'	=> 'Utility Menu'
	)
);

// konfigurasi gambar thumbnails
add_theme_support('post-thumbnails');
set_post_thumbnail_size(90, 90, true);
add_image_size('small_thumbnail', 61, 61, true);
add_image_size('large_thumbnail', 120, 120, true);
add_image_size('category_image', 658, 113, true);
add_image_size('pickup_thumbnail', 302, 123, true);