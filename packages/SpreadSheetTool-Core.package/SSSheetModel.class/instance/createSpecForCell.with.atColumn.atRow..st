as yet unclassified
createSpecForCell: aCell with: aBuilder atColumn: aColumn atRow: aRow

	|extent position|
	extent := (1 @ 1) / (self width @ self height).
	position := ((aColumn @ aRow) - (1 @ 1)) * extent.
	^ aCell createSpecWith: aBuilder atFrame: (position extent: extent)