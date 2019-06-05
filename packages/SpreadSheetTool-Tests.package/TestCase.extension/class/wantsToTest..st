*SpreadSheetTool-Tests-building suites
wantsToTest: aSelector

	^ ((self lookupSelector: aSelector) hasPragma: #skip) not