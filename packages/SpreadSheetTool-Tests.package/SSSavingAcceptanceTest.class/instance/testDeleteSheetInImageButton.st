testing
testDeleteSheetInImageButton
	"Acceptance test for #27 (Delete saved sheets)"

	| deleteButton |
	deleteButton := self subject findByLabel: 'Delete sheet'.
	self assert: deleteButton isUnique.