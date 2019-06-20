accessing
unacceptedChanges: aText

	self containingMorphicModels last
		setText: aText;
		hasUnacceptedEdits: true.