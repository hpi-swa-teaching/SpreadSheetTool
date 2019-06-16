testing
testChangingRowCountDoesNotDeleteHeadersButShowsWarningMessage

	(self findHeaderFor: #rows at: self rowCount)
		sendKeys: self someContent.
	
	self
		should: [self tryDecrementSheetInDimension: 'rows']
		notify: 'delete'