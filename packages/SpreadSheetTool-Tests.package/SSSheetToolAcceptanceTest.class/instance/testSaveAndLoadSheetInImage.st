testing
testSaveAndLoadSheetInImage

	| someIndex openButton saveButton newWindow |
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
		(self findWindowOpenedWhile: [self
			should: [openButton click]
			raise: ProvideAnswerNotification
			butHandleException: [:notification |
				notification messageText isEmptyOrNil ifTrue:
					[notification resume: sheetName]]]) asOrderedCollection.
	self
		assert: self someCellContent
		equals: (self findCellAt: someIndex in: newWindow) text asString.