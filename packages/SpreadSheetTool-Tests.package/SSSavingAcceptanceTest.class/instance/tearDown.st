running
tearDown

	sheetHeap do: [:sheetName | self toolUnderTest
		removeSheetNamed: sheetName ifAbsent: []].
	super tearDown.