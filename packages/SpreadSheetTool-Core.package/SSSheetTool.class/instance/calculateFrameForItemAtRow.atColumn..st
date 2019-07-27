toolbuilder
calculateFrameForItemAtRow: aRow atColumn: aColumn
	
	^ LayoutFrame fractions:
		(((aColumn @ aRow - 1) extent: 1)
			scaleBy: self defaultCellFraction)