interaction
windowIsClosing

	contentModels cellsDo: [:cell | cell morphIsClosing].
	^ super windowIsClosing