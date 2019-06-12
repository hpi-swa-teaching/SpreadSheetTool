testing
testContentsEditModeOn

	model editMode: true.
	cell rawValue: self someFormula.
	
	self assert: self someFormula equals: model contents.