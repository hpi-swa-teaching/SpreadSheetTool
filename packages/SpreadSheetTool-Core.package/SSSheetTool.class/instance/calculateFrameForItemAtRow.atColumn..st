toolbuilder
calculateFrameForItemAtRow: aRow atColumn: aColumn
	
	^ (aColumn @ aRow - 1 * self defaultCellExtent)
		extent: self defaultCellExtent