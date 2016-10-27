var sleep = require('./sleep');


function Order(restaurant, table) {
  var current_client = restaurant.client_line.shift();
  table[0] = current_client;
  var client = table[0];
  // console.log(client);
  // client.eat();
  console.log("Cliente " + client.name + " Se sento en la mesa...");
  console.log(table);
  sleep(3000);
  console.log("Cliente " + client.name + " comiendo...");

  // ######### with sleep function  ##############
  sleep(3000);
  client.setReady();
  table[0] = '';
  console.log("Cliente " + client.name + " se fue de la mesa...");
  if (table[0]) {
    console.log('esta llena');
  } else {
    console.log("Mesa " + table + " esta vacia...");
  }
}
  // ###############################################


  // ########  With setTimeout  ##############
  // setTimeout((function() {
  //   client.setReady();
  //   table[0] = '';
  //   console.log("Cliente " + client.name + " se fue de la mesa...");
  //   if (table[0]) {
  //     console.log('esta llena');
  //   } else {
  //     console.log('esta vacia');
  //   }
  // }), 3000);
  // ###############################################



module.exports = Order;
