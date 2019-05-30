*SpreadSheetTool-Tests-extensions
should: aBlock raiseExactly: anException butHandleException: anotherBlock 

	self
		should: aBlock
		raise: anException
		that: [:exception | exception class = anException]
		butHandleException: anotherBlock