toolbuilder
createSpecForCell: aCell with: aBuilder atColumn: aColumn atRow: aRow
	
	^ (aCell createSpecWith: aBuilder)
		frame: (self
			calculateFrameForItemAtColumn: aColumn
			atRow: aRow)