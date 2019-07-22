evaluation
computeOutputWith: anArgument

	setterArgument := anArgument.
	^ [super computeOutput]
		ensure: [setterArgument := nil]