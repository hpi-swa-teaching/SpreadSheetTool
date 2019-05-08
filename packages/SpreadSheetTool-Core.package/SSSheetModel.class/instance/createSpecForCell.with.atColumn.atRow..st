toolbuilder
createSpecForCell: aCell with: aBuilder atColumn: aColumn atRow: aRow

	| extent position |
	extent := (1 @ 1) / (self columnCount @ self rowCount).
	position := ((aColumn @ aRow) - (1 @ 1)) * extent.
	^ (aCell createSpecWith: aBuilder)
		frame: (position extent: extent)