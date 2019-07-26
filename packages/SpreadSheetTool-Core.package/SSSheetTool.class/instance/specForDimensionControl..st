toolbuilder
specForDimensionControl: aBuilder

	^ aBuilder pluggablePanelSpec new
		addChild: (self
			specForDimensionControlOf: #rows
			selector: #rowCount
			with: aBuilder);
		addChild: (self
			specForDimensionControlOf: #columns
			selector: #columnCount
			with: aBuilder);
		layout: #vertical;
		yourself