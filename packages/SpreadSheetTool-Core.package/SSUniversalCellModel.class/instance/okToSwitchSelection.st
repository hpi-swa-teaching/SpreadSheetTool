interaction
okToSwitchSelection

	^ visibleModel hasUnacceptedEdits ==> [self tool promptDiscardChanges]