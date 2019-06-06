accessing
contents

	^ self editMode
		ifFalse: [self cell value ifNotNil: [:v |
			'^', (v surroundedBySingleQuotes)]]
		ifTrue: [self cell value]