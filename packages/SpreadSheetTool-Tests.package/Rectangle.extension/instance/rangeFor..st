*SpreadSheetTool-Tests-accessing
rangeFor: xOrY

	^ xOrY caseOf: {
		[#x] -> [self left to: self right].
		[#y] -> [self top to: self bottom] }