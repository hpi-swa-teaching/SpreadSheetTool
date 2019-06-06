toolbuilder
specForDimensionControl: aBuilder

	| specs |
	specs := {
		self
			specForDimensionControlInDimension: 'rows'
			selector: #rowCount
			with: aBuilder.
		self
			specForDimensionControlInDimension: 'columns'
			selector: #columnCount
			with: aBuilder
	}.
	^ aBuilder pluggablePanelSpec new
		layout: #vertical;
		children: specs;
		yourself