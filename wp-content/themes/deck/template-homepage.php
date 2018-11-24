<?php 
/* Template Name: Homepage */

get_header();

	/**
	 * deck_homepage_section_elements hook.
	 *
	 * @hooked deck_homepage_billboard_section - 20
	 * @hooked deck_homepage_featured_section - 30
	 * @hooked deck_homepage_portfolio_section - 40
	 * @hooked deck_homepage_client_showcase_section - 50
	 * @hooked deck_homepage_blog_post_section - 60
	 */
	do_action( 'deck_homepage_section_elements' );
	
get_footer();