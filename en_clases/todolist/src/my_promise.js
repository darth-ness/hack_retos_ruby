

function myPromise() {
  return new Promise(function(resolve, reject) {
    setTimeout( () => {
      resolve('Estoy en un function');
    }, 4000);
    setTimeout( () => {
      reject('Estoy en un error');
    }, 5000);
  });
}

myPromise()
    .then(function(data) {
      console.log(data);
    })
    .catch(function(err) {
      console.log(err);
    });
