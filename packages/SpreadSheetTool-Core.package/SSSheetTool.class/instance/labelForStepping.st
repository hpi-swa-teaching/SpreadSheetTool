toolbuilder
labelForStepping

	^ 'stepping ({1})' format: {
		self steppingActivated ifTrue: 'on' ifFalse: 'off'}