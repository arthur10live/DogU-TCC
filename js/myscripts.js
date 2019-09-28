
window.onscroll = function() {scrollFunction()};
function scrollFunction() {
  if (document.body.scrollTop > 30 || document.documentElement.scrollTop > 30) {
    var mybutton = document.getElementById("myBtn");
    mybutton.style.display = ("block");
  } else {
    var mybutton = document.getElementById("myBtn");
    mybutton.style.display = ("none");
  }
}
function topFunction() {
  document.body.scrollTop = 0;
  document.documentElement.scrollTop = 0;
};


function slideCel() {
    var mobile = document.getElementById("img-mobile");
    var div = document.getElementById("fade01");
    div.className += "fadeMobile";
    mobile.className += "animated slideInRight";
  }



