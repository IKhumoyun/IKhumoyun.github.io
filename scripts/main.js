$( document ).ready(function() {
    console.log( "ready!" );

    $("#js-menu-toggler").on('click', function() {
        $("#js-main-menu").toggleClass("js-menu-opened");
    });

    $("#lightgallery").lightGallery(); 
});