testing
testLoadSheetInImage

	| loadButton |
	loadButton := self subject findByLabel: 'Open sheet'.
	self assert: loadButton morphs isSingleton.