toolbuilder
createSpecForMainPanelWith: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: self;
		children: "(nil ifNil: #buildCells ifNotNil: [(self createSpecsForCellsWith: aBuilder)]);"
			#buildCellsPanel;
		frame: (LayoutFrame
			fractions: (0 @ 0 corner: 1 @ 1)
			offsets: (0 @ self menuHeight corner: 1 @ 1));
		yourself