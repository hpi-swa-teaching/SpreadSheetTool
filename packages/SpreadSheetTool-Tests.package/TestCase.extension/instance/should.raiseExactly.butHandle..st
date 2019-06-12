*SpreadSheetTool-Tests-extensions
should: aBlock raiseExactly: anException butHandle: anotherBlock 

	self
		should: aBlock
		raise: anException
		that: [:exception | exception class = anException]
		butHandle: anotherBlock