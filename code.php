<?php
header("content-type:text/html;charset=utf-8");
//设置session开启
session_start();
$image=imagecreatetruecolor(120,40);
$bgcolor=imagecolorallocate($image,255,255,255);
imagefill($image,0,0,$bgcolor);
$captcha_code="";
//生成随机数
for($i=0;$i<4;$i++)
{
  $fontsize=15;
  $fontcolor=imagecolorallocate($image,rand(0,120),rand(0,120), rand(0,120));
  $fontcontent=rand(0,9);
  $captcha_code.=$fontcontent;
  $x=($i*100/4)+rand(5,10);
  $y=rand(5,10);
  imagestring($image,$fontsize,$x,$y,$fontcontent,$fontcolor);
}

//存到session
$_session['authcode']=$captcha_code;

//设置雪花点（250个）
for($i=0;$i<400;$i++)
{
  $pointcolor=imagecolorallocate($image,rand(50,200), rand(50,200), rand(50,200));
  imagesetpixel($image,rand(1,119),rand(1,39),$pointcolor);
}

//设置横线
for($i=0;$i<4;$i++)
{
  $linecolor=imagecolorallocate($image,rand(80,220), rand(80,220),rand(80,220));
  imageline($image,rand(1,119), rand(1,39),rand(1,119), rand(1,39),$linecolor);
}

//设置头部,image/png
header('Content-Type:image/png');

//建立png图形函数
imagepng($image);

//销毁png图形
imagedestroy($image);