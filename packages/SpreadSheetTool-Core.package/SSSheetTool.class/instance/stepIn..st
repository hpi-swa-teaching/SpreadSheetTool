stepping
stepIn: aWindow

	self steppingActivated ifFalse: [^ self].
	steppingWindow := aWindow.
	self basicSteppingActivated: false.
	self changed: #steppingActivated; changed: #labelForStepping.
	contentModels cellsDo: #step.
	self basicSteppingActivated: true.
	self changed: #steppingActivated; changed: #labelForStepping.