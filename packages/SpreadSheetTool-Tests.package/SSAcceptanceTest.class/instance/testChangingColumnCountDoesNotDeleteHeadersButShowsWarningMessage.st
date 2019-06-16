testing
testChangingColumnCountDoesNotDeleteHeadersButShowsWarningMessage

	(self findHeaderFor: #columns at: self columnCount)
		sendKeys: self someContent.
	
	self
		should: [self tryDecrementSheetInDimension: 'columns']
		notify: 'delete'