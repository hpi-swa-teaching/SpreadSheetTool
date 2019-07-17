testing
testChangeModel

	self chooseInspectorModelAt: self someCellIndex.
	self assert: (self subject findByCriteria: #isPluggableListMorph) isUnique.