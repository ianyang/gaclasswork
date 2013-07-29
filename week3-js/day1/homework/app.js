function main() {
	"use strict";

	var wordbank = ["abc", "apple", "strawberries", "lemon"];

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

  var word = shuffle(wordbank)[0]
  , word_array = []
  , initial_word = []
  ;

  for (var i = 0; i < word.length; i++) {
    word_array.push(word[i]);
  }

  for (var i = 0; i < word.length; i++) {
    initial_word.push("_");
  }

  console.log(initial_word);
  var goes = 8;

  //loop over the the find and replace with a for statement

  while (goes>0) {
    var input = window.prompt("type in a letter");
    var index = word.indexOf(input);
    if (index>-1) {
      initial_word[index] = input;
      console.log(initial_word);
      if (initial_word.indexOf("_")==-1) {
        console.log("You win!");
        break;
      }
    }
    else {
      --goes
      console.log("You have "+goes+" goes!");
    }
  }

}
main();