accessing
steppingActivated: aBoolean

	self basicSteppingActivated: aBoolean.
	self steppingActivated
		ifTrue: [steppingWindow startStepping]
		ifFalse: [steppingWindow stopStepping].
	self changed: #steppingActivated; changed: #labelForStepping.