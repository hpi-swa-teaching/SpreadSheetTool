forwarding
hasUnacceptedEdits

	^ self withoutObservingDo: [
		{self model. self getterModel. self setterModel}
			anySatisfy: #hasUnacceptedEdits]