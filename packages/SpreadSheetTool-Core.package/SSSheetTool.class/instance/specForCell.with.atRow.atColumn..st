toolbuilder
specForCell: aCell with: aBuilder atRow: aRow atColumn: aColumn

	| morph |
	morph := self
		buildCell: aCell
		with: aBuilder
		atRow: aRow
		atColumn: aColumn.
	^ (aBuilder specForMorph: morph)
		frame: (self calculateFrameForItemAtRow: aRow atColumn: aColumn);
		yourself