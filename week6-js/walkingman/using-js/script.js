var picture = document.getElementsByTagName('img')[0];
picture.style.left = "0px";

function haters(direction) {

  var picture = document.getElementsByTagName('img')[0];
  var currentLeft = parseFloat(picture.style.left.replace('px',''));
  var maxWidth = window.innerWidth-picture.width;

  picture.style.left = currentLeft+direction+'px';

    if (currentLeft > maxWidth){
      window.clearInterval(bigTimer);
      bigTimer = window.setInterval(function() {
        haters(-10)
      }, 50);
    } else if (currentLeft <= 0){
      window.clearInterval(bigTimer);
      bigTimer = window.setInterval(function() {
        haters(10)
      }, 50);
    }
}

var bigTimer = window.setInterval(function() {
  haters(10)
}, 50);



// Anil's solution

// var img = document.getElementsByTagName('img')[0];
// img.style.left = '0px';
// var walkForwards = true;
// function haters() {
//   var currentLeft = parseInt(img.style.left);

//   if (walkForwards && (currentLeft > (window.innerWidth-img.width))) {
//     walkForwards = false;
//   }
//   if (!walkForwards && (currentLeft <= 0)) {
//     walkForwards = true;
//   }

//   if (walkForwards) {
//     img.style.left = (currentLeft + 10) + 'px';
//   } else {
//     img.style.left = (currentLeft - 10) + 'px';
//   }
// }
// window.setInterval(haters, 50);



