testing
testFormulaCompositeReferencingShorthands
	"Test for #45"

	self withFixtures: self fixturesForCompositeReferencingShorthandFormulas do: [:fixture |
		self
			shouldFormula: fixture first
			in: fixture second
			evaluateTo: (cellContents at: fixture third y at: fixture third x)].