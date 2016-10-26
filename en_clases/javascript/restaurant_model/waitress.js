// var Restaurant = require('./main');


function Waitress(name) {
  this.name  = name;
}

Waitress.prototype.checkClient = function (restaurant) {
  for (var i = 0; i < restaurant.tables.length; i++) {
    if (restaurant.tables[i].eating) {
      console.log("Buscando la comida para la mesa " + (i+1));
      setTimeout((function() {
      }), 10000);
      
    }
  }
};

module.exports = Waitress;
