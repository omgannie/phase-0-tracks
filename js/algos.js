// pseudocode
// declare array of phrases
var myArray = ["first long phrase", "second long phrase", "third long phase"]

// function to find longest array
// declare as function
// take myArray as parameter
// take items in array
// declare lengths
// loop to compare lengths
// log to console longest item in array
function LongestPhrase(array) {
  var lgth = 0;
  var longest;

  for(var i=0; i < array.length; i++){
    if(array[i].length > lgth){
        var lgth = array[i].length;
        longest = array[i];
    }
  }

  console.log(longest + " is the longest phrase in this array.");

  };

// driver code
LongestPhrase(myArray);
// => second long phrase is the longest phrase in this array

myArray.push("supercalifragilalisticks");
LongestPhrase(myArray);
