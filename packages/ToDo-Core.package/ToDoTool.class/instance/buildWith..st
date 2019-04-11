as yet unclassified
buildWith: aBuilder
	
	| windowSpec |
	windowSpec := aBuilder pluggableWindowSpec new.
	windowSpec
		model: self;
		label: 'ToDo List';
		children: {
			self buildTodoListWith: aBuilder.
			self buildRemoveToDoButtonWith: aBuilder}.
			
	^ aBuilder build: windowSpec