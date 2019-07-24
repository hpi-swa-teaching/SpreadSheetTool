testing
testFormulaCompositeReferencing
	"Test for #39 (Simple cross-referencing formulas)"

	self
		withFixtures: self fixturesForCompositeReferencingFormulas
		do: [:fixture | self
			shouldFormula: fixture first
			in: fixture second
			evaluateTo: (cellContents at: fixture third y at: fixture third x)].