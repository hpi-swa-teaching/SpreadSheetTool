toolbuilder
specForCell: aCell with: aBuilder atRow: aRow atColumn: aColumn

	| morph |
	morph := self
		buildCell: aCell
		with: aBuilder
		atRow: aRow
		atColumn: aColumn.
	^ (self specForMorph: morph with: aBuilder)
		frame: (self calculateFrameForItemAtRow: aRow atColumn: aColumn);
		yourself