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
		autoplay: false,
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
})

setTimeout(function(){
    var d = new Date();
    var s = d.getSeconds();
    var m = d.getMinutes();
    var h = d.getHours();
    var a , gthu;
    switch(d.getDay()){
        case 0:
            gthu = "Chủ nhật";
            break;
        case 1:
            gthu = "Thứ hai";
            break;
        case 2:
            gthu = "Thứ ba";
            break;
        case 3:
            gthu = "Thứ tư";
            break;
        case 4:
            gthu = "Thứ năm";
            break;  
        case 5:
            gthu = "Thứ sáu";
            break;
        case 6:
            gthu = "Thứ bảy";
            break;
    }
    if(h>12){
        h = h - 12;
        a = "PM";
    }else{
        a = "AM";
    }
    if(s<10){
        s = "0" + s;
    }
    if(m<10){
        m = "0" + m;
    }
    var month = d.getMonth() + 1;
    var time = gthu+"  "+d.getDate()+"/"+ month +"/"+d.getFullYear()+"  "+h+":"+m+":"+s+" "+a;
    document.getElementById("time").innerHTML = time; 
},0);
$(document).ready(function() {
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