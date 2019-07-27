dependents
changed: what

	super changed: what.
	what = #steppingActivated ifTrue: [
		self changed: #labelForStepping].
	what = #autoEvaluateActivated ifTrue: [
		self changed: #labelForAutoEvaluate].