toolbuilder
specForCell: aCell with: aBuilder atRow: aRow atColumn: aColumn

	^ aBuilder pluggablePanelSpec new
		model: (self buildCell: aCell with: aBuilder atRow: aRow atColumn: aColumn);
		children: #asOrderedCollection;
		frame: (self calculateFrameForItemAtRow: aRow atColumn: aColumn);
		yourself