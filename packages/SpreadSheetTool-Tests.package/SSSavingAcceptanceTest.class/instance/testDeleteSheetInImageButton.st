testing
testDeleteSheetInImageButton
	"Acceptance test for #27 (Delete saved sheets)"

	| deleteButton |
	deleteButton := self subject findByLabel: self deleteSheetLabel.
	self assert: deleteButton morphs hasSingle.