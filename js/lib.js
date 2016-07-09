$(document).ready(function(){
    $("#hero").find('p:last-of-type').fadeIn('slow');
    $.scrollIt();
});

$(window).scroll(function() {
    var height = $(window).scrollTop();

    if(height >= 200){
        $("header").fadeIn();
    }else{
        $("header").hide();
    }

    if(height >= 500){
        $("#about").find('img').show();
        $("#about").find('img').addClass("slideLeft");
    }

    if(height >= 600){
        $("#project").find('img').show();
        $("#project").find('img').addClass('bigEntrance');
    }

    if(height >= 1500){
        console.log('test2');
        $("#features").find('.origami').fadeIn();
        $("#features").find('.origami').addClass('slideDown');
        $("#features").find('.origami').addClass('floating');
    }
});

function userAgentFX(){
    alert(navigator.appCodeName);
}