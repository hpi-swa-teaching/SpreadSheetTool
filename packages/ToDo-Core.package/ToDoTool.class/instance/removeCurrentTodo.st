as yet unclassified
removeCurrentTodo

	self removeTodo: self currentTodo.
	self currentTodo: nil.