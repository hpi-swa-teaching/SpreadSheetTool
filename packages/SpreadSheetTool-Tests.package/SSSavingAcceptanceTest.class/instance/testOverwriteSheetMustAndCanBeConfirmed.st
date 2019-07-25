testing
testOverwriteSheetMustAndCanBeConfirmed
	"Acceptance test for #14 (Save/Load sheet in image)"
	
	| cell saved |
	cell := self findCellAt: self someCellIndex.
	self
		into: cell put: self someContent;
		saveSheetAs: self someSheetName;
		into: cell put: self someOtherContent.
	self
		should: [self saveSheetAs: self someSheetName]
		notify: 'overwrite'
		thenAnswer: true.
	saved := self openSheetByName: self someSheetName.
	self
		assert: self someOtherContent
		equals: (self findCellAt: self someCellIndex in: saved) read.