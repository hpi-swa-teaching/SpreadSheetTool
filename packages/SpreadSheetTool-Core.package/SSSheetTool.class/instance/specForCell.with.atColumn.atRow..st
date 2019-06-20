toolbuilder
specForCell: aCell with: aBuilder atColumn: aColumn atRow: aRow

	| spec |
	spec := aCell
		ifNil: [aBuilder pluggablePanelSpec new]
		ifNotNil: [aCell createSpecWith: aBuilder].
	spec frame: (self calculateFrameForItemAtRow: aRow atColumn: aColumn).
	^ spec