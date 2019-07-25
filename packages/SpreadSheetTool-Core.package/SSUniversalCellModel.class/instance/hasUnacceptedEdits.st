forwarding
hasUnacceptedEdits

	^ self withoutObservingDo: [
		{ model. getterModel. setterModel } anySatisfy: #hasUnacceptedEdits]