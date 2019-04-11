accessing
addTodo: aToDo

	self todos add: aToDo.
	self changed: #todos.