*SpreadSheetTool-Tests-building suites
wantsToTest: aSelector

	^ ((self compiledMethodAt: aSelector) hasPragma: #skip) not