function Order(restaurant, table) {
  var current_client = restaurant.client_line.shift();
  table.push(current_client);
  // console.log(table);
  var client = table[0];
  client.eat();
  console.log("Cliente " + client.name + " comiendo...");
  setTimeout((function() {
    client.setReady();
    table[0] = '';
    console.log("Cliente " + client.name + " se fue de la mesa...");
    if (table[0]) {
      console.log('esta llena');
    } else {
      console.log('esta vacia');
    }
  }), 3000);
}



module.exports = Order;
