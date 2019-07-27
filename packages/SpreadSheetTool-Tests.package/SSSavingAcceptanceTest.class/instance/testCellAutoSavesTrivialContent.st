testing-autosave
testCellAutoSavesTrivialContent
	"Acceptance test for #17 (Automatic cell saving)"

	| cell |
	cell := self findAnyCell.
	cell sendKeys: self someContent.
	self
		deny: cell hasUnacceptedEdits;
		assert: self someContent equals: cell read.