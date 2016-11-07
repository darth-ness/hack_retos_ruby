// var Restaurant = require('./restaurant');
// var Client = require('./client');
// var Waitress = require('./waitress');
// var Host = require('./host');
// var Order = require('./order');
// var sleep = require('./sleep');

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
  waitress = new Waitress('Scarlet Johansenn');

  console.log("Bienvenidos al Rocker's Bar-Restaurant!");
  console.log("Nuestros clientes en cola: ");
  console.log('');
  for (var i = 0; i < restaurant.client_line.length; i++) {
    console.log(restaurant.client_line[i].name);
  }
  console.log('');
  console.log("Seran atendidos por nuestra bella y simpatica camarera " + waitress.name);
  console.log('');

  for (var i = 0; i < restaurant.tables.length; i++) {
    console.log("Mesa " + (i+1) + " esta vacia.");
  }
  console.log('');
  while (restaurant.client_line.length > 0) {
    waitress.checkClient(restaurant);
    waitress.takeOrder(restaurant);
    waitress.getMeal(restaurant);
    waitress.finishClient(restaurant);
  }
}

main();
