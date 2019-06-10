testing
testCellAutoSavesNonFormulaValueAfterBackspace
	"Test for #17"

	| cell |
	SystemVersion current date < (Date year: 2019 month: 4 day: 25)
		ifTrue: [^ self].
		"Known bug in old TextMorphForEditView>>#keyStroke: implementation,
		we have to deal with it"
	
	cell := self findAnyCell.
	
	cell sendKey: Character backspace.
	
	self
		assert: '' equals: cell focusAndRead;
		deny: cell hasUnacceptedEdits.