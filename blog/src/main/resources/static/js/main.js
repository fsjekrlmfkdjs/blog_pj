(function ($) {
  'use strict';

  // aos
  AOS.init({
    duration: 1500,
  });

  // drawer menu
  $('.open-submenu').on('click', function () {
    $(this).parent().siblings('.submenu-transform').addClass('active');
  });

  $('.btn-menu-back').on('click', function () {
    $(this).closest('.submenu-transform').removeClass('active');
  });

  // header search
  $('.icon-search, .search-close').on('click', function () {
    $('.search-wrapper').toggleClass('search-appear');
  });

  // quickview slider initiation
  $('#quickview-modal').on('shown.bs.modal', function (e) {
    $('.qv-large-slider').slick('setPosition');
    $('.qv-thumb-slider').slick('setPosition');
  });

  // common slider
  $('.common-slider').each(function () {
    var $this = $(this);
    var verticalSlide = $(this).attr('data-vertical-slider');

    if ($this.children().length > 1) {
      var selectorAppendDots = $this.parent().find('.activate-dots');
      var selectorAppendArrows = $this.parent().find('.activate-arrows');
      var selectorPrevArrow = `<span class="arrow-slider arrow-prev"><svg xmlns="http://www.w3.org/2000/svg" width="100" height="100" viewBox="0 0 24 24" fill="none" stroke="#FEFEFE" stroke-width="0.5" stroke-linecap="round" stroke-linejoin="round" class="icon-arrow-left"><polyline points="15 18 9 12 15 6"></polyline></svg></span>`;
      var selectorNextArrow = `<span class="arrow-slider arrow-next"><svg xmlns="http://www.w3.org/2000/svg" width="100" height="100" viewBox="0 0 24 24" fill="none" stroke="#FEFEFE" stroke-width="0.5" stroke-linecap="round" stroke-linejoin="round" class="icon-arrow-right"><polyline points="9 18 15 12 9 6"></polyline></svg></span>`;

      $($this).slick({
        infinite: false,
        speed: 500,
        cssEase: 'ease',
        swipeToSlide: true,        
        vertical: verticalSlide ? true : false,
        verticalSwiping: verticalSlide ? true : false,
        appendDots: selectorAppendDots,
        appendArrows: selectorAppendArrows,
        prevArrow: selectorPrevArrow,
        nextArrow: selectorNextArrow,
        responsive: [
            {
                breakpoint: 768,
                settings: {
                    vertical: false,
                    verticalSwiping: false,
                }
            }
        ]
      });
    }
  });

  // slideshow
  $('.activate-slider').each(function () {
    var $this = $(this);
    if ($this.children().length > 1) {
      var selectorAppendDots = $this.parent().find('.activate-dots');
      var selectorAppendArrows = $this.parent().find('.activate-arrows');
      var selectorPrevArrow = `<span class="arrow-slider arrow-prev"><svg xmlns="http://www.w3.org/2000/svg" width="100" height="100" viewBox="0 0 24 24" fill="none" stroke="#000" stroke-width="0.5" stroke-linecap="round" stroke-linejoin="round" class="icon-arrow-left"><polyline points="15 18 9 12 15 6"></polyline></svg></span>`;
      var selectorNextArrow = `<span class="arrow-slider arrow-next"><svg xmlns="http://www.w3.org/2000/svg" width="100" height="100" viewBox="0 0 24 24" fill="none" stroke="#000" stroke-width="0.5" stroke-linecap="round" stroke-linejoin="round" class="icon-arrow-right"><polyline points="9 18 15 12 9 6"></polyline></svg></span>`;

      function doAnimation() {
        $this.find('.slick-slide').each(function () {
          $(this).find('[data-animation]').each(function () {
            var dataAnimation = $(this).attr('data-animation');
            $(this).removeClass(dataAnimation);

            if ($(this).closest('.slick-slide').is('.slick-current.slick-active')) {
              $(this).addClass(dataAnimation);
            }
          })
        })

        return false;
      }

      $(this)
        .on('init', function (event, slick) {
          doAnimation();
        })
        .on('afterChange', function (event, slick, direction) {
          doAnimation();
        })
        .slick({
          appendDots: selectorAppendDots,
          appendArrows: selectorAppendArrows,
          prevArrow: selectorPrevArrow,
          nextArrow: selectorNextArrow
        });
    }
  })

  // increament-decreament button
  $(".qty-btn").on('click', function () {
    var qtyInput = $(this).parent().find('input');

    if ($(this).hasClass('inc-qty')) {
      qtyInput.val(parseInt(qtyInput.val()) + 1);
    } else if (qtyInput.val() >= 1) {
      qtyInput.val(parseInt(qtyInput.val()) - 1);
    }
  });

  // footer copyright current date
  $('.current-year').text(new Date().getFullYear());

  // toggle footer menu
  $('.footer-heading').on('click', function () {
    $(this).siblings().slideToggle();
  });

  // toggle & accordion 
  $('.accordion-btn').on('click', function () {
    $(this).siblings('.accordion-child').slideToggle();
    $(this).toggleClass('active');
  });
  $('.write-btn').on('click', function () {
    $(this).closest('.accordion-parent').find('.accordion-child').slideToggle();
  });

  // filter drawer open
  $('.filter-drawer-trigger').on('click', function () {
    $('.filter-drawer').toggleClass('active');
  });

  // product img popup
  $('[data-fancybox="gallery"]').fancybox({
    buttons: [
      "slideShow",
      "thumbs",
      "zoom",
      "fullScreen",
      "share",
      "close"
    ],
    loop: false,
    protect: true
  });


  /* --------------------------------------------------------
    scrollUp active
  -------------------------------------------------------- */
  var scrollUpBtn = $('#scrollup');

  $(window).scroll(function() {
    if ($(window).scrollTop() > 700) {
      scrollUpBtn.addClass('show');
    } else {
      scrollUpBtn.removeClass('show');
    }
  });

  scrollUpBtn.on('click', function(e) {
    e.preventDefault();
    $('html, body').animate({scrollTop:0}, 300);
  });

  /* --------------------------------------------------------
    newsletter popup
  -------------------------------------------------------- */
  $ (window).ready (function () {
    setTimeout (function () {
      $ ('#modal-subscribe').modal ("show")
    }, 3000);
  })

})(jQuery);



 // JavaScript 코드 (좋아요 버튼 클릭 이벤트)
    const likeButtons = document.querySelectorAll('.btn-like');

    likeButtons.forEach((button) => {
        let count = 0;

        button.addEventListener('click', () => {
            count++;
            button.querySelector('.like-count').textContent = count;
        });
    });
    
// 게시글 올리기js
$(document).ready(function(){
        $(".files").attr('data-before',"Drag file here or click the above button");
        $('input[type="file"]').change(function(e){
            var fileName = e.target.files[0].name; 
            $(".files").attr('data-before',fileName);
        
        });
    });
    
    
// 특정 클래스에 대해 텍스트 길이를 제한하는 함수
    function limitTextLength(selector, maxLength) {
        const elements = document.querySelectorAll(selector);
        elements.forEach(element => {
            const text = element.innerText;
            if (text.length > maxLength) {
                const truncatedText = text.substring(0, maxLength) + '...';
                element.innerText = truncatedText;
            }
        });
    }

// core-text 클래스에 대해 텍스트 길이 제한 (여기서는 30자로 제한)
limitTextLength('.core-text', 30);

// 마이페이지 모달
 $(document).ready(function () {
        $imgSrc = $('#imgProfile').attr('src');

        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#imgProfile').attr('src', e.target.result);
                };
                reader.readAsDataURL(input.files[0]);
            }
        }

        $('#btnChangePicture').on('click', function () {
            if (!$('#btnChangePicture').hasClass('changing')) {
                $('#profilePicture').click();
            } else {
                // Confirm 버튼 동작
                // 변경된 이미지를 저장하거나 처리하는 로직
            }
        });

        $('#profilePicture').on('change', function () {
            readURL(this);
            $('#btnChangePicture').addClass('changing');
            $('#btnChangePicture').attr('value', 'Confirm');
            $('#btnDiscard').removeClass('d-none');
        });

        $('#btnDiscard').on('click', function () {
            $('#btnChangePicture').removeClass('changing');
            $('#btnChangePicture').attr('value', 'Change');
            $('#btnDiscard').addClass('d-none');
            $('#imgProfile').attr('src', $imgSrc);
            $('#profilePicture').val('');
        });

        // 저장 버튼 클릭 시
        $('#btnSaveChanges').on('click', function () {
            // 변경된 이미지를 서버에 저장하거나 다른 작업을 수행하는 로직
            // 이 예시에서는 여기에 이미지 저장을 위한 코드를 추가하세요.
            // 예: $.ajax() 또는 fetch()를 사용하여 서버에 데이터를 전송하는 코드
        });
    });

// 마이페이지 끝


