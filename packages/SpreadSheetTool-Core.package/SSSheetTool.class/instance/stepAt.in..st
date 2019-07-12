stepping
stepAt: millisecondClockValue in: aWindow

	[contentModels cellsDo: #step]
		onInterruptEnsure: [self steppingActivated: false]