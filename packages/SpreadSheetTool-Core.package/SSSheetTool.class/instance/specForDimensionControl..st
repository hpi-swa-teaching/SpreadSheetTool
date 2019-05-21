toolbuilder
specForDimensionControl: aBuilder

	| specs |
	specs := {
		((SSPropertyFieldModel newWithParent: self)
			getProperty: #rowCount;
			setProperty: #rowCount:)
				createSpecWith: aBuilder
				helpText: 'rows'.
		((SSPropertyFieldModel newWithParent: self)
			getProperty: #columnCount;
			setProperty: #columnCount:)
				createSpecWith: aBuilder
				helpText: 'columns' }.
	^ aBuilder pluggablePanelSpec new
		children: specs;
		layout: #vertical;
		yourself