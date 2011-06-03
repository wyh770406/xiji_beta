function w(vd)
{
  var ob=document.getElementById(vd);
  if(ob.style.display=="block" || ob.style.display=="")
  {
     ob.style.display="none";
     var ob2=document.getElementById('s'+vd);
     ob2.style.backgroundImage="url(images/icon2.gif)";
  }
  else
  {
    ob.style.display="block";
    var ob2=document.getElementById('s'+vd);
    ob2.style.backgroundImage="url(images/icon2.gif)";
  }
}
function k(vd)
{
  var ob=document.getElementById(vd);  
  if(ob.style.display=="block")
  {
     ob.style.display="none";
     var ob2=document.getElementById('s'+vd);
     ob2.style.backgroundImage="url(images/icon2.gif)";
  }
  else
  {
    ob.style.display="block";
    var ob2=document.getElementById('s'+vd);
    ob2.style.backgroundImage="url(images/icon2.gif)";
  }
}// JavaScript Document