var Restaurant = require('./restaurant');
var Client = require('./client');
var Waitress = require('./waitress');


function main() {
  client = new Client('John Snow');
  client.eating = true;
  restaurant = new Restaurant();
  restaurant.tables[0] = client;
  // restaurant[]
  waitress = new Waitress('Ramona');
  waitress.checkClient(restaurant);



}

main();
