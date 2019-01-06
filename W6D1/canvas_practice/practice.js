document.addEventListener("DOMContentLoaded", function(){
  const MyCanvas = document.getElementById("mycanvas");
  MyCanvas.width = 500;
  MyCanvas.height = 500;

  const ctx = MyCanvas.getContext("2d");
  ctx.fillStyle = "navy";
  ctx.fillRect(0, 0, 500, 500);

  ctx.beginPath();
  ctx.arc(200, 200, 100, 0, 2*Math.PI, true);
  ctx.strokeStyle = "yellow";
  ctx.lineWidth = 50;
  ctx.stroke();
  ctx.fillStyle = "red";
  ctx.fill();
});
