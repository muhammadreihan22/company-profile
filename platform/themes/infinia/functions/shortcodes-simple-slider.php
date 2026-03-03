<?php

use Botble\Shortcode\Facades\Shortcode;
use Botble\Theme\Facades\Theme;

if (! is_plugin_active('simple-slider')) {
    return;
}

app()->booted(function (): void {
    add_filter(SIMPLE_SLIDER_VIEW_TEMPLATE, function () {
        return Theme::getThemeNamespace('partials.shortcodes.simple-slider.index');
    }, 120);

    Shortcode::setPreviewImage('simple-slider', Theme::asset()->url('images/ui-blocks/simple-slider.png'));
});
