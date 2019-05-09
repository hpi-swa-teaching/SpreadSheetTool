toolbuilder
createSpecForMainPanelWith: aBuilder

	^ aBuilder pluggablePanelSpec new
		children: (self createSpecsForCellsWith: aBuilder);
		frame: (LayoutFrame
			fractions: (0 @ 0 corner: 1 @ 1)
			offsets: (0 @ self menuHeight corner: 1 @ 1));
		wantsResizeHandles: true;
		yourself