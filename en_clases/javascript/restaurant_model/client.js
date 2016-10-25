function Client(name) {
  this.name  = name;
  this.seated  = false;
  this.eating  = false;
}

Client.prototype.changeStatus = function () {
  this.seated = true;
};

Client.prototype.eat = function () {
  this.eating = true;
  this.setTimeOut();
};


module.exports = Client;
