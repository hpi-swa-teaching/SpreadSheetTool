testing
testSaveSheetInImageButton
	"Acceptance test for #14 (Save/Load sheet in image)"

	| saveButton |
	saveButton := self subject findByLabel: self saveSheetLabel.
	self assert: saveButton morphs hasSingle.