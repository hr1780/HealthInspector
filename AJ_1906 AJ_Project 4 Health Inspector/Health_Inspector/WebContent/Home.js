$(document).ready(function() {
  $('a[href^="#"]').on('click', function(evt) {
    evt.preventDefault();
    
    var link = $(this).attr('href');
    var less = (!$('#nav').hasClass('active')) ? 50 : 0;
    
    $('html, body').animate({
      scrollTop: $(link).offset().top - less
    }, 750);
  });
  
  $(window).on('scroll', function() {
    if ($(this).scrollTop() > 100) {
      $('#nav').addClass('active');
    }
    else {
      $('#nav').removeClass('active');
    }
  });
});

//go to top
$(document).ready(function(){
         $('#go-to-top').click(function(e){
           e.preventDefault();
           var body = $("html, body");
           var target = $(e.currentTarget).attr('href');
           console.log(target);
           var offset = $(target).offset();
           console.log(offset);
           //$(document).scrollTop(offset.top);
           body.animate({scrollTop: offset.top}, 2000);
         });
       });
