toolbuilder
createSpecForDimensionPanelWith: aBuilder

	^ aBuilder pluggablePanelSpec new
		children: (self createSpecsForDimensionFieldsWith: aBuilder);
		frame: (0 @ 0 extent: 1 / 6 @ self menuHeight);
		yourself
	