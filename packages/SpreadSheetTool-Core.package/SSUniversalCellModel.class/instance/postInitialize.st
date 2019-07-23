initialize-release
postInitialize

	self model wantsSteps
		ifTrue: [self startStepping].