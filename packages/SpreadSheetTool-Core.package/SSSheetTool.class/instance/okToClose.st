interaction
okToClose

	^ (hasUnsavedChanges or: [self hasUnacceptedEdits])
		==> [self promptChangesCanBeDiscarded]