toolbuilder
createSpecForMenuBarWith: aBuilder

	^ aBuilder pluggablePanelSpec new
		layout: #horizontal;
		children: {
			self createSpecForButtonPanelWith: aBuilder.
			self createSpecForDimensionPanelWith: aBuilder };
		frame: (LayoutFrame
			fractions: (0 @ 0 corner: 1 @ 0)
			offsets: (0 @ 0 corner: 0 @ self menuHeight));
		wantsResizeHandles: true;
		yourself