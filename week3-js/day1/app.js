// This is the main function for my app
function main() {
	"use strict";

	console.log("hello world!");

	// I must declare all of my variables before I use them
	var i = 4
    , str = "hello world"
	  , arr = [2, 11, 42, 37]
	  , obj = { awesome: "Megan", wayAwesome: "Brian"}
	  ;

	// I'll print out my viarables
	console.log("number", i);
	console.log("string", str);
	console.log("arr", arr);
	console.log("object", obj);

	function sorter(a, b) {
		if (a > b) {
			return 1;
		} else {
			return -1;
		}
	}

	arr.sort(sorter);

	console.log("sorter", sorter(3, 5));
}

main();