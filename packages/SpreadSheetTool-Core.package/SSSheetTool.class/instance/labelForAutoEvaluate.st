toolbuilder
labelForAutoEvaluate

	^ 'auto evaluate ({1})' format: {
		self autoEvaluateActivated ifTrue: 'on' ifFalse: 'off'}