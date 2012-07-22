var text = new Array();
text[0] = 'jquery and so on';
text[1] = 'for #web irc';
text[2] = 'we make the webs';
text[3] = 'so you dont have to';

var i = 1;
function transition(childEle) {
      $(childEle).animate({
      opacity: 0
      }, 6000, function() {
      i = (i+1)%text.length;
      childEle.siblings().css('z-index','2');
      childEle.css('z-index','1');
      childEle.css('opacity','1');
      childEle.find('.text').html(text[i]);
      transition(childEle.siblings());
      });
}
$(document).ready(function() {
    transition($('#child0'));
});

