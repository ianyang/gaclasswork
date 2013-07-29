function main() {
	"use strict";

	var names = ["Alex", "Brian", "Dave", "Donielle", "Elen", "Ian", "Karl", "Kevin", "Kristine", "Karl", "Lauren", "Lior", "Megan", "Ricky", "Ryan", "Sharif", "Travis", "Xiao", "Josh", "Tod", "Justin"]
  , type = window.prompt("how do you want to divide?")
  , number = window.prompt("how many?")
  ;

  function shuffle (arr) {
    var i = arr.length, j, temp;
    if ( i === 0 ) { return false; }
    while ( --i ) {
      j = Math.floor( Math.random() * ( i + 1 ) );
      temp = arr[i];
      arr[i] = arr[j];
      arr[j] = temp;
      return arr;
    }
  }

  function group (arr, n) {
    var result = [];
    while (arr.length !== 0) {
    result.push(arr.splice(0, n));
    }
    return result;
  }

  var shuffledNames = shuffle(names);
  var slicedNames = shuffledNames.slice(0,number);
  var slicedGroups = group(names, number);

  if (type === "n"){
    console.log(slicedNames);
  }
  else if (type === "g"){
    console.log(slicedGroups);
  }
  else{
    console.log("Error");
  }

}
main();