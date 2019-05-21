testing
testSaveAndLoadSheetInImage

	| sheetName someIndex openButton saveButton newWindow |
	sheetName := 'My cool sheet'.
	someIndex := (self rowCount * self columnCount) sqrt ceiling.
	
	(self findCellAt: someIndex)
		sendKeys: self someCellContent;
		sendControlSave.
	
	saveButton := self subject findByLabel: 'Save sheet'.
	openButton := self subject findByLabel: 'Open sheet'.
	
	self
		should: [saveButton click]
		raise: ProvideAnswerNotification
		butHandleException: [:notification | notification resume: sheetName].
	
	newWindow := MTFMorphWrapper newWith:
		(self assertWindowOpensWhile: [self
			should: [openButton click]
			raise: ProvideAnswerNotification
			butHandleException: [:notification | notification resume: sheetName]]).
	self
		assert: self someCellContent equals: (newWindow cellAt: someIndex) asString.