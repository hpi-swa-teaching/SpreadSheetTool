testing
testRowCountColumnCount

	self fixturesForRowCountColumnCount
		do: [:aFixture | self testRowCount: aFixture first columnCount: aFixture second]
		separatedBy: [self setUp].