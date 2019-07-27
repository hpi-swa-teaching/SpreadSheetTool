testing
testOverwriteSheetMustBeConfirmedAndCanBeCancelled
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
		thenAnswer: false.
	saved := self openSheetByName: self someSheetName.
	self
		assert: self someContent
		equals: (self findCellAt: self someCellIndex in: saved) read.