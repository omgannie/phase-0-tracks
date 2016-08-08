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

// function that takes two objects
// checks to see if objects share at least one key-value pair
// so {name: "Steven", age: 54} and {name: "Tamir", age: 54}
// returns true
// if no pairs match, function to return false

function compareKeyValue(first_object, second_object) {
  if (first_object.keys() && second_object.keys() === first_object.keys() && second_object.keys()) {
    console.log(true);
  } else {
    console.log(false);
  }
}

// driver code
LongestPhrase(myArray);
// => second long phrase is the longest phrase in this array

myArray.push("supercalifragilalisticks");
LongestPhrase(myArray);
// => supercalifragilalisticks is the longest phrase in this array

compareKeyValue({name: "Steven", age: 54}, {name: "Tamir", age: 54})
// => true
compareKeyValue({name: "Alice", age: 20}, {name: "Andrew", age: 70})
// => false
