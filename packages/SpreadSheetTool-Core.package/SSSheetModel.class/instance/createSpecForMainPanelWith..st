toolbuilder
createSpecForMainPanelWith: aBuilder

	^ aBuilder pluggablePanelSpec new
		children: (self createSpecsForCellsWith: aBuilder);
		frame: (0 @ self menuHeight corner: 1 @ 1);
		wantsResizeHandles: true;
		yourself