function makeImageBigger() {
  var gaLogo = document.getElementsByTagName('img')[0];
  gaLogo.setAttribute('width', gaLogo.width+10);

  if (gaLogo.width > 700){
    window.clearInterval(bigTimer);
  }

}

var bigTimer = window.setInterval(makeImageBigger, 1);



// Execute a funciton multiple times between a delay
// window.setInterval(function_name, delaymilliseconds)
// window.clearInterval(set_interval_object_id)

// Execute a function after a certain period
// window.setTimeout
// window.clearTimeout

