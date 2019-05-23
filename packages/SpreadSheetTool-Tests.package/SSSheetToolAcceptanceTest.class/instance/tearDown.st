running
tearDown

	self toolUnderTest
		removeSheetNamed: sheetName
		ifAbsent: [].
	super tearDown.