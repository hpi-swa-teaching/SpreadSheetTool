testing
testDefaultModel
	"Acceptance test for #65 (Unify different formula approaches)"

	self assert: (self findAnyCell model isKindOf: SSHybridFormulaModel).