interaction
okToSwitchSelection

	^ visibleModel hasUnacceptedEdits ==> [self parent promptDiscardChanges]