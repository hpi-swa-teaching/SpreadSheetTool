toolbuilder
createSpecWith: aBuilder

	self model ifNil: [self initializeDefaultModel].
	^ aBuilder pluggablePanelSpec new
		model: self;
		children: #buildCell;
		frame: 0 @ 0 extent: 1 @ 1;
		spacing: 0;
		minimumExtent: self tool minimumCellExtent;
		yourself