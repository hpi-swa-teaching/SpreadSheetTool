toolbuilder
specForCell: aCell with: aBuilder atColumn: aColumn atRow: aRow
	
	| spec |
	spec := aCell
		ifNil: [aBuilder pluggablePanelSpec new]
		ifNotNil: [aCell createSpecWith: aBuilder].
	spec frame: (self
		calculateFrameForItemAtColumn: aColumn
		atRow: aRow).
	^ spec