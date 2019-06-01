*SpreadSheetTool-Tests-building suites
addToSuite: suite fromMethods: testMethods 
	testMethods do:  [ :selector | 
			(self wantsToTest: selector) ifTrue: [
					suite addTest: (self selector: selector) ] ].
	^suite