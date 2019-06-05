testing
testOpenSheetInImageButton
	"Acceptance test for #14 (Save/Load sheet in image)"

	| openButton |
	openButton := self subject findByLabel: self openSheetLabel.
	self assert: openButton morphs hasSingle.