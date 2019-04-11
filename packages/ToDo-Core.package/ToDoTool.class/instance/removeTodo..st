accessing
removeTodo: aToDo

	self currentTodo ifNil: [^ false].
	
	self todos remove: aToDo.
	self changed: #todos.