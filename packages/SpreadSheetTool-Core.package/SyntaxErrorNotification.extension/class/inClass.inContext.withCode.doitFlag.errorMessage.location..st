*SpreadSheetTool-Core-exceptionInstantiator
inClass: aClass inContext: aContext withCode: codeString doitFlag: doitFlag errorMessage: errorString location: location
	^self new
		setClass: aClass
		context: aContext
		code: codeString
		doitFlag: doitFlag
		errorMessage: errorString
		location: location