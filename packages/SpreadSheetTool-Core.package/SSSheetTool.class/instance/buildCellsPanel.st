toolbuilder
buildCellsPanel
	| builder spec |
	builder := ToolBuilder default.
	spec := builder pluggablePanelSpec new
		children: ((self createSpecMatrixForCellsWith: builder)
			prependColumn: [:rowIndex | self createSpecForRowHeaderWith: builder atIndex: rowIndex]
			prependRow: [:columnIndex | self createSpecForColumnHeaderWith: builder atIndex: columnIndex]
			origin: [self createSpecForOriginWith: builder]) asArray;
		frame: 0 @ 0 extent: 1 @ 1;
		wantsResizeHandles: true;
		yourself.
	^ (builder build: spec) asOrderedCollection