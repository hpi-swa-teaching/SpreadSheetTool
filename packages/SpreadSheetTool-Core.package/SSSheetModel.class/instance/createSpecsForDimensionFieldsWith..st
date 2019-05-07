toolbuilder
createSpecsForDimensionFieldsWith: aBuilder

	| specs |
	specs := OrderedCollection new.
	specs add: (((SSPropertyFieldModel newWithParent: self)
		getProperty: #rowCount;
		setProperty: #rowCount:)
			createSpecWith: aBuilder
			helpText: 'rows').
	specs add: (((SSPropertyFieldModel newWithParent: self)
		getProperty: #columnCount;
		setProperty: #columnCount:)
			createSpecWith: aBuilder
			helpText: 'columns').
	self setLineByLineLayoutForSpecs: specs.
	^ specs