tools
resize: aDimension to: aValue

	self
		into: (self findDimensionFieldFor: aDimension)
		put: aValue asString.
	self subject redraw.