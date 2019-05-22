testing
testOpenSheetInImage

	| openButton |
	openButton := self subject findByLabel: 'Open sheet'.
	self assert: openButton morphs isSingleton.