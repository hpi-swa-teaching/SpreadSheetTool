as yet unclassified
getText

	^ self isEditing
		ifTrue: [super getText]
		ifFalse: [self getOutput]