testing
testDefaultModel
	"acceptance test for #65 (Unify different formula approaches)"

	self assert: (self findAnyCell model isKindOf: SSCellModel).
	self flag: #todo "Better rename cell model to formula model ..."