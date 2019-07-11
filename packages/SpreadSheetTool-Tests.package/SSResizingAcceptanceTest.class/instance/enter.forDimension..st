tools
enter: aValue forDimension: aDimension

	self
		into: (self findDimensionFieldFor: aDimension)
		put: aValue asString.