//Slide show back-ground
var images=new Array('/img/background/IMG_7387-4.jpg','/img/background/IMG_7294.jpg','/img/background/AnhNen1-3.jpg');
var nextimage=0;
doSlideshow();

function doSlideshow(){
    if(nextimage>=images.length){nextimage=0;}
    $('.mainWrap')
    .css('background-image','url("'+images[nextimage++]+'")')
    .fadeIn(500,function(){
        setTimeout(doSlideshow,1000);
    });
}

