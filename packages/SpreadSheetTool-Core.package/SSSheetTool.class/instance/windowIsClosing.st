dependents
windowIsClosing

	self contentSheet cellsDo: [:cell | cell morphIsClosing].
	^ super windowIsClosing