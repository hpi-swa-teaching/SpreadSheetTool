stepping
stepIn: aWindow

	self steppingActivated ifFalse: [^ self].
	steppingWindow := aWindow.
	self disableSteppingWhile: [
		self contentSheet cellsDo: #step].