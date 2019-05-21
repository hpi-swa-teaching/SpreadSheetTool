testing
testSaveSheetInImage

	| saveButton |
	saveButton := self subject findByLabel: 'Save sheet'.
	self assert: saveButton morphs isSingleton.