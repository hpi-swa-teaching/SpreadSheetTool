accessing
contents

	^ self editMode
		ifFalse: [self evaluate]
		ifTrue: [self cell rawValue]