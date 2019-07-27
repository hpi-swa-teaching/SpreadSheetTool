forwarding
computeOutput

	^ (self model class canUnderstand: #computeOutput)
		ifTrue: [self model computeOutput]