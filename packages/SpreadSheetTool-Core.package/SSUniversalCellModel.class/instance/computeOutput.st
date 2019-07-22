forwarding
computeOutput

	^ (model class canUnderstand: #computeOutput)
		ifTrue: [model computeOutput]