accessing
contents

	^ self editMode
		ifFalse: [self cell value asString]
		ifTrue: [self cell rawValue]