accessing
contents

	^ self editMode
		ifFalse: [self cell value "ifNotNil: #surroundedBySingleQuotes"]
		ifTrue: [self cell value]