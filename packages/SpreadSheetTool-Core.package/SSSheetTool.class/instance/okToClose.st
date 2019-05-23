interaction
okToClose

	^ (hasUnsavedChanges or: [self hasUnacceptedChanges])
		==> [self promptChangesCanBeDiscarded]