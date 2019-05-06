toolbuilder
createSpecsForDimensionFieldsWith: aBuilder

	| specs |
	specs := OrderedCollection new.
	specs add: (((SSPropertyField newWithParent: self)
		getProperty: #rowCount;
		setProperty: #rowCount:)
			createSpecWith: aBuilder
			minimumCellExtent: self minimumCellExtent).
	specs add: (((SSPropertyField newWithParent: self)
		getProperty: #columnCount;
		setProperty: #columnCount:)
			createSpecWith: aBuilder
			minimumCellExtent: self minimumCellExtent).
	self setLineByLineLayoutForSpecs: specs.
	^ specs