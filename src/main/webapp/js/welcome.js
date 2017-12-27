var x=0;
   var y=0;
   var speed = 30;
var ctx=null;
    
   function init(){
      ctx = document.getElementById('canvas').getContext('2d');
      return setInterval(draw, speed);
   } 
    
   function draw(){
      ctx.clearRect(0,0,800,800);//清除画布某某个范围内的内容,参数分别为x,y,宽度,高度
      ctx.fillStyle = '#FFF111'//设置颜色
      ctx.fillRect(x++,y++,50,50)//画一个矩形,参数为:x,y,宽,高
   }