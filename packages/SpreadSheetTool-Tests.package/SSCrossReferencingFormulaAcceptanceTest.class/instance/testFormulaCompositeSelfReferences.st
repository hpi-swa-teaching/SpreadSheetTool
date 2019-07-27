testing
testFormulaCompositeSelfReferences
	"Test for #39 (Simple cross-referencing formulas)"

	self
		withFixtures: self fixturesForCompositeReferences
		do: [:selector | self
			shouldFormula: ('^ cell perform: #{1} with: 0 with: 0' format: {selector})
			in: 3 @ 3
			openDebuggerNotifying: 'self'].