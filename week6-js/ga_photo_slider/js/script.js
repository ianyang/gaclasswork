var next = document.getElementsByClassName('next')[0];
var previous = document.getElementsByClassName('prev')[0];
var gallery = document.getElementsByClassName('gallery')[0];
gallery.style.marginLeft = "0px";

next.onclick = nextSlide;
function nextSlide() {
  var currentMargin = parseFloat(gallery.style.marginLeft);
  var counter = 0

  if (currentMargin <= -2400) {
    var animateNextReset = window.setInterval(nextReset, 1);
  } else {
    var animateMoveLeft = window.setInterval(moveLeft, 2);
  }

  function moveLeft() {
    if (counter < 600) {
      currentMargin = parseFloat(gallery.style.marginLeft);
      gallery.style.marginLeft = currentMargin-10+'px';
      counter = counter+10;
    } else {
      window.clearInterval(animateMoveLeft);
    }
  }

  function nextReset() {
    if (counter < 2400) {
      currentMargin = parseFloat(gallery.style.marginLeft);
      gallery.style.marginLeft = currentMargin+24+'px';
      counter = counter+24;
    } else {
      window.clearInterval(animateNextReset);
    }
  }

};


previous.onclick = prevSlide;
function prevSlide() {
  var currentMargin = parseFloat(gallery.style.marginLeft);
  var counter = 0

  if (currentMargin >= 0) {
    var animatePrevReset = window.setInterval(prevReset, 1);
    console.log(counter);
  } else {
    var animateMoveRight = window.setInterval(moveRight, 2);
  }

  function moveRight() {
    if (counter < 600) {
      currentMargin = parseFloat(gallery.style.marginLeft);
      gallery.style.marginLeft = currentMargin+10+'px';
      counter = counter+10;
    } else {
      window.clearInterval(animateMoveRight);
    }
  }

  function prevReset() {
    if (counter < 2400) {
      currentMargin = parseFloat(gallery.style.marginLeft);
      gallery.style.marginLeft = currentMargin-24+'px';
      counter = counter+24;
    } else {
      window.clearInterval(animatePrevReset);
    }
  }

};



