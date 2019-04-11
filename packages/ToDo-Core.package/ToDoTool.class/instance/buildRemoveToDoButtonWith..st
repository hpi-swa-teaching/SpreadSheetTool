as yet unclassified
buildRemoveToDoButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
			model: self;
			label: 'Remove selected todo';
			action: #removeCurrentTodo;
			enabled: #isRemoveCurrentTodoPossible;
			frame: (0@0.8 corner: 1@1);
			yourself