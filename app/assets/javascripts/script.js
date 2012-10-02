$(document).ready(function()  {
  $('#prev').mouseover(function() {
    $('.prevnext').stop().animate({
      width: '930px',
      left: '-50px'
    });
  });
  $('#next').mouseover(function() {
    $('.prevnext').stop().animate({
      width: '930px',
    });
  });

  $('.prevnext').mouseout(function() {
    $('.prevnext').stop().animate({
      width: '880px',
      left: '0'
    });
  });
});

/* высота таблицы */
$(document).ready(function() {
  $('.calendar td').each(function() {
      var h = $(this).css('height');
      if($(this).hasClass('cap') == true){
      h = parseFloat(h) + 35 + 'px';
      $(this).find('div:first-child').height(h);
    } else {
      h = parseFloat(h) - 10 + 'px';
      $(this).find('div:first-child').height(h);
    };
  });
});

$(document).ready(function() {
  $('#switch a').toggle(function() {
      $('hint-wrapper').remove();
      $('#switch').addClass('on');
      $(this).text('Подсказки вкл');
      $('.popup').each(function() {
        var hintTarget = $(this);
        var hint = $(this).attr('title');
        $('<div class="hint-wrapper"><div class="hint">' + hint + '</div></div>').appendTo(hintTarget);
      });
      return false;
    }, function() {
      $('#switch').removeClass('on');
      $(this).text('Подсказки выкл');
      $('.hint-wrapper').remove();
      return false;
  });
});






