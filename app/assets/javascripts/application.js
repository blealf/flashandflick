// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require materialize
//= require materialize-sprockets

//= require_tree .



document.addEventListener("DOMContentLoaded", function (event) {

    var sideNav = document.querySelectorAll('.sidenav');
    var instance2 = M.Sidenav.init(sideNav, {});
    

    var myslider = document.querySelector('.slider');
    M.Slider.init(myslider, {
        indicators: false,
        height: 500,
        transition: 500,
        interval: 5000,
        draggable: true
    });

    

    var gallery_slider = document.querySelector('.gallery_slider');
    M.Slider.init(gallery_slider, {
        indicators: true,
        height: 500,
        transition: 500,
        interval: 5000,
        draggable: true
    });

    var material_box = document.querySelectorAll('.materialboxed');
    M.Materialbox.init(material_box, {});

    var select = document.querySelectorAll('select');
    M.FormSelect.init(select, {});

    var carousel = document.querySelectorAll('.carousel');
    var instance = M.Carousel.init(carousel, {
        indicators: true
    });


    

    var floating = document.querySelectorAll('.fixed-action-btn');
    var instance3 = M.FloatingActionButton.init(floating, {
        hoverEnabled: false
    });

    var parallax = document.querySelectorAll('.parallax');
    var instance4 = M.Parallax.init(parallax, {
        responsiveThreshold: 0
    });


    var clicked_image = document.querySelector('.next-click');
    clicked_image.onclick = function(event){
        // alert('clicked');
        instance.next(2);
    };



});

