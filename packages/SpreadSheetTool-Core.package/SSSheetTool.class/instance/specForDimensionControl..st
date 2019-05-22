toolbuilder
specForDimensionControl: aBuilder

	| specs |
	specs := {
		self specForDimensionControlInDimension: 'row' with: aBuilder.
		self specForDimensionControlInDimension: 'column' with: aBuilder
	}.
	^ aBuilder pluggablePanelSpec new
		layout: #vertical;
		children: specs;
		yourself