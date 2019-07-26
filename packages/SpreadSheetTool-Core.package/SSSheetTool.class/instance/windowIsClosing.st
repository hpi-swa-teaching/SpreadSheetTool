dependents
windowIsClosing

	contentSheet cellsDo: [:cell | cell morphIsClosing].
	^ super windowIsClosing