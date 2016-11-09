import TodoList from './todoList';
import AddTodoItem from './addTodoItem';

function loadTodoList() {
	let todoList = new TodoList([{
		label: 'Este es mi item 1',
		checked: false,
		id: 1
	},
	{
		label: 'Este es mi item 2',
		checked: true,
		id: 2
	}]);

	$('.todo-list').append(todoList.$component);
}


function loadFetchedData(array) {
	let aux = [];
	array.forEach( (item) =>  {
		let todo = {
		label: item.title,
		checked: item.completed,
		id: item.id
		};
		aux.push(todo);
	});
	let todoList = new TodoList(aux);
	$('.todo-list').append(todoList.$component);
}


fetch('https://jsonplaceholder.typicode.com/todos')
  .then( (response) => {
      if (response.status !== 200) {
        console.log('Hubo un error.' + response.status);
      }

      response.json().then( (data) => {
        loadFetchedData(data);
      });
    }
  )
  .catch( (err) => {
    console.log('Error al recuperar la data', err);
  });
// loadTodoList();
