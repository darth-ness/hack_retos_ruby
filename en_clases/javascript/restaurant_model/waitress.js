var Order = require('./order');
var sleep = require('./sleep');



function Waitress(name) {
  this.name  = name;
}

Waitress.prototype.checkClient = function (restaurant) {

  for (var i = 0; i < restaurant.tables.length; i++) {
    if (restaurant.tables[i] == '') {
      console.log(this.name + " esta buscando cliente para la mesa " + (i+1));
      console.log('');
      sleep(2000);
      var current_client = restaurant.client_line.shift();
      restaurant.tables[i][0] = current_client;
      var client = restaurant.tables[i][0];
      console.log("Cliente " + client.name + " se sento en la mesa " + (i+1));
      console.log('');
      sleep(2000);

    }
  }


};

Waitress.prototype.takeOrder = function (restaurant) {
  for (var i = 0; i < restaurant.tables.length; i++) {
    if (restaurant.tables[i] !== '') {
      var client = restaurant.tables[i][0].name
      console.log(client + " esta ordenando y " + this.name + " tomando la orden en la mesa " + (i+1));
      console.log('');
      sleep(2000);
    }
  }

};

Waitress.prototype.getMeal = function () {
  for (var i = 0; i < restaurant.tables.length; i++) {
    var client = restaurant.tables[i][0].name
    if (!restaurant.tables[i][0].eating) {
      restaurant.tables[i][0].eating = true;
      console.log(client + " esta comiendo en la mesa " + (i+1));
      console.log('');
      sleep(2000);
      restaurant.tables[i][0].eating = false;
      restaurant.tables[i][0].ready = true;

    }
  }
};

Waitress.prototype.finishClient = function () {
  for (var i = 0; i < restaurant.tables.length; i++) {
    var client = restaurant.tables[i][0].name
    if (restaurant.tables[i][0].ready) {
      console.log(client + " comio y abandono la mesa " + (i+1));
      console.log('');
      table = restaurant.tables[i]
      table[0] = '';
      if (table[0]) {
        console.log('esta llena');
      } else {
        console.log("Mesa " + (i+1) + " esta vacia...");
        console.log('');
      }
    }
  }
};

module.exports = Waitress;
