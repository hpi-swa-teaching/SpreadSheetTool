testing
testGenerateColumnLabelFor

	self fixturesForLabel do: [:aFixture |
		model generateColumnLabelFor: aFixture first.
		self assert: aFixture second equals: model contents].