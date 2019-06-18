testing
testFormulaCompositeSelfReferences
	"Test for #39 (Simple cross-referencing formulas)"

	self fixturesForCompositeReferences do: [:selector |
		self
			shouldFormula: ('^ self perform: {1} with: 0 with: 0' format: {selector})
			in: 3 @ 3
			notify: 'self'].