$("button").click(function()
{
var sound=new Audio();
sound.src="sounds/"+$(this).attr("id")+".mp3";
sound.play();
});

$(document).keydown(function(e)
{
    var sound=new Audio();
    sound.src="sounds/"+ $("."+e.key).attr("id")+".mp3";
    sound.play();
});