toolbuilder
calculateFrameForItemAtColumn: aColumn atRow: aRow
	
	^ ((aColumn @ aRow) - (1 @ 1) * self defaultCellExtent)
		extent: self defaultCellExtent