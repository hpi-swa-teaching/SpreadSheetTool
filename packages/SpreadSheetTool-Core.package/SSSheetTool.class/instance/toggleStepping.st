interaction
toggleStepping

	self steppingActivated: self steppingActivated not.
	self steppingActivated
		ifTrue: [
			steppingWindow startStepping.
			self postInitialize]
		ifFalse: [
			steppingWindow stopStepping].