var Restaurant = require('./restaurant');
var Client = require('./client');
var Waitress = require('./waitress');
var Host = require('./host');
var Order = require('./order');


function main() {
  ale = new Client('Ale');
  happy = new Client('Happy');
  ness = new Client('Ness');
  restaurant = new Restaurant();
  restaurant.client_line = [ale, happy, ness];

  // restaurant[]
  // waitress = new Waitress('Scarlet Johansenn');
  // waitress.checkClient(restaurant);
  // host = new Host('Margot Robin');
  // host.checkTables(restaurant);
  order = new Order (restaurant, restaurant.tables[1]);

}

main();
