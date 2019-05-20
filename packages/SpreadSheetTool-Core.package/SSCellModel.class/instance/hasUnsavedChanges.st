accessing
hasUnsavedChanges

	^ (self cell value isEmptyOrNil not)
		or: [super hasUnsavedChanges]