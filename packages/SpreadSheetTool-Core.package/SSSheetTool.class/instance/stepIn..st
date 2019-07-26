stepping
stepIn: aWindow

	self steppingActivated ifFalse: [^ self].
	steppingWindow := aWindow.
	self steppingActivated: false.
	contentModels cellsDo: #step.
	self steppingActivated: true.