var Restaurant = require('./restaurant');
var Client = require('./client');
var Waitress = require('./waitress');
var Host = require('./host');
var Order = require('./order');


function main() {
  ale = new Client('Ale');
  happy = new Client('Happy');
  ness = new Client('Ness');
  buli = new Client('Buli');
  bruno = new Client('Bruno');
  luis = new Client('Luis');
  restaurant = new Restaurant();
  restaurant.client_line = [ale, happy, ness, buli, bruno, luis];
  restaurant.tables = [[''], [''], ['']];

  // restaurant[]
  waitress = new Waitress('Scarlet Johansenn');
  // console.log('Prueba');
  waitress.checkClient(restaurant);
  // host = new Host('Margot Robin');
  // host.checkTables(restaurant);
  // order = new Order (restaurant, restaurant.tables[1]);

}

main();
