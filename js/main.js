/* Bbuck scripts */

(function ($) {
  'use strict';

  $(window).on('load', function () {
    $('body').addClass('loaded');
  });

  /*=========================================================================
      Sticky Header
  =========================================================================*/
  $(function () {
    $(window).on("scroll", function () {
      if ($(window).scrollTop() > 650) {
        $("#header").addClass("navbar-fixed-top");
      } else {
        //remove the background property so it comes transparent again (defined in your css)
        $("#header").removeClass("navbar-fixed-top");
      }
    });
  });

  /*=========================================================================
          Mobile Menu
  =========================================================================*/
  $('.menu-wrap ul.nav').slicknav({
    prependTo: '.header-section .navbar',
    label: '',
    allowParentLinks: true,
  });

  /*=========================================================================
      Screenshot Carousel
  =========================================================================*/
  $('#screenshot-carousel').owlCarousel({
    loop: true,
    autoplay: false,
    smartSpeed: 500,
    items: 5,
    nav: false,
    center: true,
    navText: [ '<i class="arrow_carrot-left"></i>', '<i class="arrow_carrot-right"></i>' ],
    dots: false,
  });

  /*=========================================================================
      Initialize smoothscroll plugin
  =========================================================================*/
  smoothScroll.init({
    offset: 60,
  });

  /*=========================================================================
      Scroll To Top
  =========================================================================*/
  $(window).on('scroll', function () {
    if ($(this).scrollTop() > 100) {
      $('#scroll-to-top').fadeIn();
    }
    else {
      $('#scroll-to-top').fadeOut();
    }
  });

  /*=========================================================================
      WOW Active
  =========================================================================*/
  new WOW().init();

  /*=========================================================================
      Venobox Active
  =========================================================================*/
  $('.venobox').venobox();

  /*=========================================================================
      Signup
  =========================================================================*/
  $('#sign-up-form').submit(function (event) {

    var
      signUpForm = $(this),
      signUpData = {},
      signupModal = $('#signup-modal'),
      progressIndicator = $('#progress_indicator'),
      preSignUp = $('#pre-sign-up');

    progressIndicator.removeClass('d-none');

    // get the form data
    signUpForm.serializeArray().map(function (x) {
      signUpData[ x.name ] = x.value;
    });

    // process the form
    $.ajax({
      type: 'POST',
      url: 'https://www.bbuck.io/api/signup',
      data: signUpData,
      dataType: 'json',
      encode: true,
    })
      .done(function (responseBody) {
        // hide signupForm and show success message
        signUpForm.addClass('d-none');
        progressIndicator.addClass('d-none');
        window.location.href = '/verify.html';
      })
      .fail(function (responseBody) {
        // need to handle error responce
        signUpForm.removeClass('d-none');
        preSignUp.addClass('d-none');
        alert(responseBody);
        progressIndicator.addClass('d-none');
        // need to handle error responce
      })
      .always(function (responseBody) {
        signUpForm.addClass('d-none');
        progressIndicator.addClass('d-none');
        // log responseBody to the console
        console.log(responseBody);
      });

    // stop the form from submitting the normal way and refreshing the page
    event.preventDefault();
  });
  // toggle signup form
  $('#signup-button').click(function () {
    $('#pre-sign-up').addClass('d-none');
    $('#sign-up').removeClass('d-none');
  });
  $('#post-signup-button').click(function () {
    $('#post-sign-up').addClass('d-none');
    $('#pre-sign-up').removeClass('d-none');
  });
  // toggle and scroll to signup form
  $('#floating-signup-button').click(function () {
    $('#pre-sign-up').addClass('d-none');
    $('#sign-up').removeClass('d-none');
    $('#home')[0].scrollIntoView({behavior: "smooth"});
  });

  /*=========================================================================
      Login
  =========================================================================*/
  $('#loginForm').submit(function (event) {

    var
      loginForm = $(this),
      loginpData = {},
      loginModal = $('#login-modal');

    // get the form data
    loginForm.serializeArray().map(function (x) {
      loginpData[ x.name ] = x.value;
    });

    // process the form
    $.ajax({
      type: 'POST',
      url: '/api/login',
      data: loginpData,
      dataType: 'json',
      encode: true,
    })
      .done(function (responceBody) {
        // hide loginForm
        loginModal.hide();
        // set Session into cookie
        Cookies.set('Session', responceBody.data.sessionToken, {
          expires: 1,
          domain: '.bbuck.io',
          path: '/',
        });
        // redirect to dashboard
        window.location.href = '/dashboard';
      })
      .fail(function (xhr, status, error) {
        // show error responce message
        loginForm.find('.alert').text(xhr.responseJSON.error.message);
        loginForm.find('.alert').show();
      })
      .always(function (responceBody) {
        // log responceBody to the console
        console.log(responceBody);
      });

    // stop the form from submitting the normal way and refreshing the page
    event.preventDefault();
  });

  /*=========================================================================
      Google Analytics
  =========================================================================*/

  (function (i, s, o, g, r, a, m) {
    i[ 'GoogleAnalyticsObject' ] = r;
    i[ r ] = i[ r ] || function () {
      (i[ r ].q = i[ r ].q || []).push(arguments);
    }, i[ r ].l = 1 * new Date();
    a = s.createElement(o),
      m = s.getElementsByTagName(o)[ 0 ];
    a.async = 1;
    a.src = g;
    m.parentNode.insertBefore(a, m);
  })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');

  ga('create', 'UA-131199378-1', 'auto');
  ga('send', 'pageview');

})(jQuery);
