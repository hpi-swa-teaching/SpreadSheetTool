toolbuilder
buildCellsPanel

	| builder spec |
	builder := ToolBuilder default.
	spec := builder pluggablePanelSpec new
		children: (self createSpecsForCellsWith: builder);
		frame: (0 @ 0 extent: 1 @ 1);
		wantsResizeHandles: true;
		yourself.
	^ (builder build: spec) asOrderedCollection