interaction
okToClose

	^ (hasUnsavedChanges or: [self hasUnacceptedEdits])
		==> [self promptDiscardChanges]