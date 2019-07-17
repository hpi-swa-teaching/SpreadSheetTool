accessing
steppingActivated: aBoolean

	self basicSteppingActivated: aBoolean.
	self steppingActivated
		ifTrue: [self containingWindow startStepping]
		ifFalse: [self containingWindow stopStepping].
	self changed: #steppingActivated; changed: #labelForStepping.