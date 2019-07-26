stepping
stepIn: aWindow

	self steppingActivated ifFalse: [^ self].
	steppingWindow := aWindow.
	self disableSteppingWhile: [
		contentSheet cellsDo: #step].