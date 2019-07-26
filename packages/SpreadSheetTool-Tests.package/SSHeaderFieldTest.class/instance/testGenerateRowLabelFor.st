testing
testGenerateRowLabelFor

	self fixturesForLabel do: [:aFixture |
		model generateRowLabelFor: aFixture first.
		self assert: aFixture first asString equals: model contents].