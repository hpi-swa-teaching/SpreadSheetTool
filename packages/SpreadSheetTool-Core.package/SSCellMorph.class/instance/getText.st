display
getText

	^ self isEditing
		ifTrue: [super getText]
		ifFalse: [self getOutput]