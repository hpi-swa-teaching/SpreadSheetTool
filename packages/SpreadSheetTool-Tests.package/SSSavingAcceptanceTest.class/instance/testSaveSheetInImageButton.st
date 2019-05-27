testing
testSaveSheetInImageButton
	"Acceptance test for #14 (Save/Load sheet in image)"

	| saveButton |
	saveButton := self subject findByLabel: 'Save sheet'.
	self assert: saveButton morphs hasSingle.