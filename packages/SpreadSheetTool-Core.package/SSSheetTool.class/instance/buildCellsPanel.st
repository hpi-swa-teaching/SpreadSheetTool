toolbuilder
buildCellsPanel

	| builder spec result |
	builder := ToolBuilder default.
	spec := builder pluggablePanelSpec new
		children: (self
			specMatrixForCells: self
			collectHeaderModels with: builder);
		frame: 0 @ 0 extent: 1 @ 1;
		wantsResizeHandles: true;
		yourself.
	result := (builder build: spec) asOrderedCollection.
	^ result