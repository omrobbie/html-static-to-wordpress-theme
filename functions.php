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