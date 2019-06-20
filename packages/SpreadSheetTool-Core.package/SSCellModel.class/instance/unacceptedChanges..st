accessing
unacceptedChanges: aText

	self containingMorphicModels singleOne
		setText: aText;
		hasUnacceptedEdits: true.