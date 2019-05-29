testing
testColumnHeaderFor

	| header |
	self fixturesForLabel do: [:aFixture |
		header := self classUnderTest columnHeaderFor: aFixture first.
		self assert: aFixture second equals: header label].