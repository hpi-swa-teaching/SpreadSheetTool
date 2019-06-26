accessing
contents

	^ self editMode
		ifFalse: [latestValue asString]
		ifTrue: [self cell rawValue]