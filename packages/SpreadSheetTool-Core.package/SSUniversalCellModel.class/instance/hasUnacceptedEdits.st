forwarding
hasUnacceptedEdits

	^ self withoutObservingDo: [
		{ model. self getterModel. self setterModel } anySatisfy: #hasUnacceptedEdits]