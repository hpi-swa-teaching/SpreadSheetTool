evaluation
computeOutputWith: anArgument

	setterArgument := anArgument.
	context := nil.
	^ [super computeOutput]
		ensure: [setterArgument := nil]