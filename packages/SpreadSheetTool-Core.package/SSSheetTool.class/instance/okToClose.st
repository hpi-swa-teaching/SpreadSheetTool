interaction
okToClose

	^ self hasUnsavedChanges ==> [self promptChangesCanBeDiscarded]