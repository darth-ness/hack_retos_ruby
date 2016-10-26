var Order = require('./order');



function Waitress(name) {
  this.name  = name;
}

Waitress.prototype.checkClient = function (restaurant) {

  for (var i = 0; i < restaurant.tables.length; i++) {
    if (restaurant.tables[i] == '') {
      console.log(this.name + " esta buscando comida para la mesa " + (i+1));
      order = new Order(restaurant, restaurant.tables[i]);
    }
  }

};

module.exports = Waitress;
