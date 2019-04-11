tests
testToDoToolAllowsCreatingTodos

	tool createTodo: 'first item'.
	tool createTodo: 'second item'.
	self assert: tool todos notEmpty