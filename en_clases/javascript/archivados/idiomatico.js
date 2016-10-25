
arr = ["Angel", "Romer", "Juca", "Jorge"];

function returnName(myArray) {
  for (var i = 0; i < myArray.length; i++) {
    myArray[i] = (function(arr, n) {
      // console.log(arr);
      // console.log(n);
      return arr[n] + " " + n;
    })(myArray[i], i);
  }
  return myArray;
}

console.log(returnName(arr));
