
var fibonacci = function(n) {
  if(n <= 2) {
    return 1;
  } else {
    return this.fibonacci(n + 1) + this.fibonacci(n + 2);
  }
};
