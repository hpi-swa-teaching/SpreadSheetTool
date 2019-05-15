toolbuilder
calculateFrameForItemAtColumn: aColumn atRow: aRow
	
	^ (aColumn @ aRow * self defaultCellExtent)
		extent: self defaultCellExtent