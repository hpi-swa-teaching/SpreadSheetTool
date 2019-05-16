toolbuilder
createSpecForDimensionPanelWith: aBuilder

	^ aBuilder pluggablePanelSpec new
		children: (self createSpecsForDimensionFieldsWith: aBuilder);
		yourself
	