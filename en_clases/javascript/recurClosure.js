function sumar(base) {
  return function(num) {
    return base + num;
  };
}

var s = sumar(5);
console.log(s(2));
