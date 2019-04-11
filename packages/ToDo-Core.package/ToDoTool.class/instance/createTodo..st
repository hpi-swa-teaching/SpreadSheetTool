accessing
createTodo: aString

	self addTodo: (ToDo new
		description: aString;
		yourself)