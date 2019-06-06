testing
testRowHeaderFor

	| header |
	self fixturesForLabel do: [:aFixture |
		header := self classUnderTest rowHeaderFor: aFixture first.
		self assert: aFixture first asString equals: header label].