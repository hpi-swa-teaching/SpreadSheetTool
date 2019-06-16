toolbuilder
specForDimensionControl: aBuilder

	| spec |
	spec :=  aBuilder pluggablePanelSpec new
		layout: #vertical;
		children: OrderedCollection new;
		yourself.
	spec children
		add: (self
			specForDimensionControlInDimension: 'rows'
			selector: #rowCount
			with: aBuilder);
		add: (self
			specForDimensionControlInDimension: 'columns'
			selector: #columnCount
			with: aBuilder).
	^ spec