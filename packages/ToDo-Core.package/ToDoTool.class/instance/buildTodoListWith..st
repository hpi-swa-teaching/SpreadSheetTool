as yet unclassified
buildTodoListWith: aBuilder

	^ aBuilder pluggableListSpec new
			model: self;
			list: #todos; 
			getSelected: #currentTodo; 
			setSelected: #currentTodo:;
			frame: (0@0 corner: 1@0.8);
			yourself