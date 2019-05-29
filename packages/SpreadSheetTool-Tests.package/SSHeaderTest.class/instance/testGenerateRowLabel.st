testing
testGenerateRowLabel

	self fixturesForLabel do: [:aFixture |
		header generateRowLabelFor: aFixture first.
		self assert: aFixture first asString equals: header label].