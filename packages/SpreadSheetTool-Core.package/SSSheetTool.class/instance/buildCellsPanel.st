toolbuilder
buildCellsPanel

	| builder spec panel |
	oldCellMorphs := cellMorphs.
	oldCellMorphs do: #delete.
	cellMorphs := Dictionary new.
	
	builder := ToolBuilder default.
	spec := builder pluggablePanelSpec new
		children: (self specMatrixForContents: builder);
		frame: (0 @ 0 extent: 1 @ 1);
		wantsResizeHandles: true;
		yourself.
	panel := builder build: spec.
	^ panel asOrderedCollection