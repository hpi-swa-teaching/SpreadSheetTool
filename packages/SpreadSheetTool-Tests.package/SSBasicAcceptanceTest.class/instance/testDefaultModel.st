testing
testDefaultModel
	"acceptance test for #65 (Unify different formula approaches)"

	self assert: (self findAnyCell model isKindOf: SSHybridFormulaModel).