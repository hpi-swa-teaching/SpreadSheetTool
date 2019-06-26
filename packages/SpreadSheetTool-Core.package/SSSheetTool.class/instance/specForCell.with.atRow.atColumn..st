toolbuilder
specForCell: aCell with: aBuilder atRow: aRow atColumn: aColumn

	^ (self
		specForMorph: (self
			buildCell: aCell
			with: aBuilder
			atRow: aRow
			atColumn: aColumn)
		with: aBuilder)
			frame: (self calculateFrameForItemAtRow: aRow atColumn: aColumn);
			yourself