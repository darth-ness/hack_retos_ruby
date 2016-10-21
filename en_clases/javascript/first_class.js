console.log('Hola Mundo!');

myMatrix = [[Math.floor(Math.random()*10), Math.floor(Math.random()*10)], [Math.floor(Math.random()*10), Math.floor(Math.random()*10)], [Math.floor(Math.random()*10), Math.floor(Math.random()*10)]];
console.log(myMatrix);


for (var i = 0; i < myMatrix.length; i++) {
  var printing = "";
  for (var j = 0; j < myMatrix[j].length ; j++) {
    printing += myMatrix[i][j] + " ";
  }
  console.log(printing);
}
