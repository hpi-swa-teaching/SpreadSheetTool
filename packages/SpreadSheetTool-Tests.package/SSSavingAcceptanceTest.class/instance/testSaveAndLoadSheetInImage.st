testing
testSaveAndLoadSheetInImage
	"Acceptance test for #14 (Save/Load sheet in image)"

	| newWindow |
	(self findCellAt: self someCellIndex)
		sendKeys: self someContent.
	self saveSheetAs: self someSheetName.
	
	newWindow := self openSheetByName: self someSheetName.
	self
		assert: self someContent
		equals: (self findCellAt: self someCellIndex in: newWindow) read.