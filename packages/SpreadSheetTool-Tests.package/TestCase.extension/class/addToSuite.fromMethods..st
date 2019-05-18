*SpreadSheetTool-Tests-building suites
addToSuite: suite fromMethods: testMethods 
	testMethods do:  [ :selector | 
			((self compiledMethodAt: selector) pragmaAt: #skip)
				ifNil: [
					suite addTest: (self selector: selector) ]].
	^suite