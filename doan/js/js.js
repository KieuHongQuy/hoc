function addCart(id,sl,st){
  alert(id + sl + st);
  $.ajax({
    url: 'ajax/add_giohang.php',
    type: 'POST',
    data: {id: id, sl:sl},
    //dataType: 'JSON',
    success: function(data){
        if(st==0){
            $('#cart-view').html(data.total);
            $('#cart-view-header').html(data.total);
            $('#cart-view-mobile').html(data.total);
            $('#cart-view-menu').html(data.total);
            $.confirm({
                boxWidth: '300px',
                useBootstrap: false,
                columnClass: 'small',
                type: 'orange',
                title: 'Thông báo đặt hàng',
                content: data.message,
                buttons: {
                close: function(){
                }
            }
          });
        }
        if(st==1){
            window.location.href = 'gio-hang';
        }
    }
  })
}
$(document).ready(function(){
  $(".toggle-menu").click(function(){
    $(".menu-sub").toggle(500);
  });
  $('.slickProductNB').slick({
		dots: false,
		infinite: true,
		speed: 300,
		vertical: false,
		slidesToShow: 5,
		slidesToScroll: 1,
		arrows: true,
		autoplay: true,
		autoplaySpeed: 2000,
		responsive: [{
		    breakpoint: 1280,
		    settings: {
		      slidesToShow: 5,
		      slidesToScroll: 1
		    }
		  },
		  {
		    breakpoint: 1024,
		    settings: {
		      slidesToShow: 4,
		      slidesToScroll: 1
		    }
		  },
		  {
		    breakpoint: 600,
		    settings: {
		      slidesToShow: 3,
		      slidesToScroll: 1
		    }
		  },
		  {
		    breakpoint: 480,
		    settings: {
		      slidesToShow: 2,
		      slidesToScroll: 1
		    }
		  }
		]
	});

  $('.slickProduct').slick({
      dots: false,
      infinite: false,
      speed: 300,
      vertical: false,
      slidesToShow: 9,
      slidesToScroll: 1,
      arrows: false,
      autoplay: true,
      autoplaySpeed: 2000,
      responsive: [{
          breakpoint: 1280,
          settings: {
            slidesToShow: 9,
            slidesToScroll: 1
          }
        },
        {
          breakpoint: 1024,
          settings: {
            slidesToShow: 7,
            slidesToScroll: 1
          }
        },
        {
          breakpoint: 768,
          settings: {
            slidesToShow: 3,
            slidesToScroll: 1
          }
        },
        {
          breakpoint: 480,
          settings: {
            slidesToShow: 1,
            slidesToScroll: 1
          }
        }
      ]
  });
  $(".page-item").click(function(){
    var id = $(this).attr("rel");
    if(id==1){
      $(".pd-1").css("display","flex");
      $(".pd-2").css("display","none");
    }else{
      $(".pd-1").css("display","none");
      $(".pd-2").css("display","flex");
    }
  });
});