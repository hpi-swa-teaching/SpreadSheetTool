interaction
completionController

	^ self displaysFormula
		ifTrue: [super completionController]
		ifFalse: [ECNullController new]