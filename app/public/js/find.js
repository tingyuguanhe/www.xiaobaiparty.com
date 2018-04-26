// const m = require('wechatLogin');

// console.log(m());

$(function(){
  
 
  $('#myModal').modal({show: true});
  
    var mySwiper = new Swiper('.swiper-container',{
      autoplay : 2000,
      pagination : '.pagination',
      paginationClickable :true,
      simulateTouch : true,
      loop : true,//可选选项，开启循环
      autoplayDisableOnInteraction : false, // 这样，即使我们滑动之后， 定时器也不会被清除
    })
  })
  
