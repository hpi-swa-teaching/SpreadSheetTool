accessing
hasUnsavedChanges

	^ (self cell value isEmptyOrNil not)
		or: [self containingMorphicModels anySatisfy: #hasUnacceptedEdits]