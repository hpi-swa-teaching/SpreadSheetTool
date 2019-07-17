testing
testChangeModel
	"Acceptance test for #64 (Access object model)"

	self chooseInspectorModelAt: self someCellIndex.
	self assert: (self subject findByCriteria: #isPluggableListMorph) isUnique.