interaction
okToClose

	^ (hasUnsavedChanges or: [self hasUnacceptedChanges])
		==> [self promptDiscardChanges]