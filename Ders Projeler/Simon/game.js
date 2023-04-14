const buttonColors=["red","blue","green","yellow"];
var gamePattern=[];
var userClickedPattern=[];




$("#"+randomChosenColor).fadeOut(100).fadeIn(100);









$(".btn").click(function()
{
var userChosenColor = this.id;
userClickedPattern.push(userChosenColor);
playSound(userChosenColor);
animatePress(userChosenColor);
});




function nextSquence()
{
    var randomNumber=Math.floor(Math.random()*4);
    playSound(buttonColors[randomNumber]);
    $("#"+buttonColors[randomNumber]).fadeOut(100).fadeIn(100);
    gamePattern.push(randomChosenColor);

    return 
}

function playSound(name)
{
    var sound=new Audio ();
    sound.src="sounds/"+name+".mp3";
    sound.play();
    
}

function animatePress(currentColor)
{
   $("#"+currentColor).addClass("pressed");
   setTimeout(function()
   {
    $("#"+currentColor).removeClass("pressed");
   },100);
}