toolbuilder
specForCell: aCell with: aBuilder atRow: aRow atColumn: aColumn

	| spec |
	spec := self
		buildCell: aCell
		with: aBuilder
		atRow: aRow
		atColumn: aColumn.
	^ (self specForMorph: spec with: aBuilder)
		frame: (self calculateFrameForItemAtRow: aRow atColumn: aColumn);
		yourself