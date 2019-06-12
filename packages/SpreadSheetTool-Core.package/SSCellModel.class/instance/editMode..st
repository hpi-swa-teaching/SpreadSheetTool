accessing
editMode: aBoolean

	self
		basicEditMode: aBoolean;
		contentsChanged.
	self containingMorphicModels do: [:m |
		m hasUnacceptedEdits: (aBoolean and: [self isFormula])].
	hasUnacceptedEdits := false.