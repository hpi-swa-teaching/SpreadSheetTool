testing
testDefaultModel

	self assert: (self findAnyCell model isKindOf: SSCellModel).
	self flag: #todo "Better rename cell model to formula model ..."