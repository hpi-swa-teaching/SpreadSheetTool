toolbuilder
specForDimensionControl: aBuilder

	^ aBuilder pluggablePanelSpec new
		layout: #vertical;
		addChild: (self
			specForDimensionControlInDimension: 'rows'
			selector: #rowCount
			with: aBuilder);
		addChild: (self
			specForDimensionControlInDimension: 'columns'
			selector: #columnCount
			with: aBuilder);
		layout: #vertical;
		yourself