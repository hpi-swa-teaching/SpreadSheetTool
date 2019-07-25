*SpreadSheetTool-Core-accessing
ssContext: aContext

	(self class canUnderstand: #context:)
		ifFalse: [^ self]. "What a pity, you did not load ShoutCore-ct.66 ..."
	self context: aContext.