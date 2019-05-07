toolbuilder
createSpecsForDimensionFieldsWith: aBuilder

	| specs |
	specs := OrderedCollection new.
	specs add: (((SSPropertyFieldModel newWithParent: self)
		getProperty: #rowCount;
		setProperty: #rowCount:)
			createSpecWith: aBuilder
			helpText: 'Number of rows').
	specs add: (((SSPropertyFieldModel newWithParent: self)
		getProperty: #columnCount;
		setProperty: #columnCount:)
			createSpecWith: aBuilder
			helpText: 'Number of columns').
	self setLineByLineLayoutForSpecs: specs.
	^ specs