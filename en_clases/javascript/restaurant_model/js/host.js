function Host(name) {
  this.name  = name;
}

Host.prototype.checkTables = function (restaurant) {
  for (var i = 0; i < restaurant.tables.length; i++) {
    if (!restaurant.tables[i]) {
      console.log("Buscando cliente para la mesa " + (i+1));
      setTimeout((function() {
      }), 2000);
    }
  }
};

// module.exports = Host;
