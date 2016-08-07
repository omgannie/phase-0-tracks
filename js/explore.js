// create a function that takes a string as a parameter
// reverse counter for each character in the string
// pass to console

var string = "Reverse Me!";

function reverse(str) {
  for (var i = str.length - 1; i >= 0; i--) {
    console.log(str[i]);
  }
}

// driver code
reverse(string);
reverse("Hello!");
