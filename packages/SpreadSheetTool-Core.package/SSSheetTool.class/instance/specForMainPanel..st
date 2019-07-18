toolbuilder
specForMainPanel: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: self;
		children: #buildCellsPanel;
		frame: (LayoutFrame
			fractions: (0 @ 0 corner: 1 @ 1)
			offsets: (0 @ self menuHeight corner: 0 @ 0));
		yourself