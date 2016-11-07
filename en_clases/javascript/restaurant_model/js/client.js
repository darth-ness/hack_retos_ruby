function Client(name) {
  this.name  = name;
  this.eating  = false;
  this.seated  = false;
  this.ready  = false;
}

Client.prototype.changeStatus = function () {
  this.seated = true;
};

Client.prototype.eat = function () {
  this.eating = true;

};

Client.prototype.setReady = function () {
  this.ready = true;

};


// module.exports = Client;
