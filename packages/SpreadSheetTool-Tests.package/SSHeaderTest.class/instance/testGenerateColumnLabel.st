testing
testGenerateColumnLabel

	self fixturesForLabel do: [:aFixture |
		header generateColumnLabelFor: aFixture first.
		self assert: aFixture second equals: header label].