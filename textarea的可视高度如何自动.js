


// function makeExpandingArea(el) {
//   var timer = null;
//   //由于ie8有溢出堆栈问题，故调整了这里
//   var setStyle = function(el, auto) {
//       if (auto) el.style.height = 'auto';
//       el.style.height = el.scrollHeight + 'px';
//   }
//   var delayedResize = function(el) {
//       if (timer) {
//           clearTimeout(timer);
//           timer = null;
//       }
//       timer = setTimeout(function() {
//           setStyle(el)
//       }, 200);
//   }
//   if (el.addEventListener) {
//       el.addEventListener('input', function() {
//           setStyle(el, 1);
//       }, false);
//       setStyle(el)
//   } else if (el.attachEvent) {
//       el.attachEvent('onpropertychange', function() {
//           setStyle(el)
//       })
//       setStyle(el)
//   }
//   if (window.VBArray && window.addEventListener) { //IE9
//       el.attachEvent("onkeydown", function() {
//           var key = window.event.keyCode;
//           if (key == 8 || key == 46) delayedResize(el);

//       });
//       el.attachEvent("oncut", function() {
//           delayedResize(el);
//       }); //处理粘贴
//   }
// }

$.fn.extend({
  autoHeight: function() {
      return this.each(function() {
          var $this = jQuery(this);
          if(!$this.attr('_initAdjustHeight')) {
              $this.attr('_initAdjustHeight', $this.outerHeight());
          }
          _adjustH(this).on('input', function() {
              _adjustH(this);
          });
      });
      // 重置高度
      function _adjustH(elem) {
          var $obj = jQuery(elem);
          return $obj.css({
              height: $obj.attr('_initAdjustHeight'),
              'overflow-y': 'hidden'
          }).height(elem.scrollHeight);
      }
  }
}); 

// mark_push(".circle_of_friends","circle_of_friends");
$(function(){
  mark_push(".circle_of_friends","circle_of_friends");

  $('textarea').autoHeight(); // 使用自动适应高度

  var textarea = document.getElementById('textarea');
  makeExpandingArea(textarea);

})
