testing
testOverwriteSheetMustAndCanBeConfirmed
	"Acceptance test for #27"
	
	| saved |
	self findAnyCell sendKeys: self someContent.
	self saveSheetAs: self someSheetName.
	self findAnyCell sendKeys: self someOtherContent.
	
	self
		should: [self saveSheetAs: self someSheetName]
		notify: 'overwrite'
		thenAnswer: true.
	saved := self openSheetByName: self someSheetName.
	self
		assert: self someOtherContent
		equals: (self findCellAt: self someCellIndex in: saved) focusAndRead.