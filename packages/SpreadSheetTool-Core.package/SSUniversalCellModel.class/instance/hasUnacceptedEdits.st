forwarding
hasUnacceptedEdits

	^ self withoutObservingDo: [self model hasUnacceptedEdits]