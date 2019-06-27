tools
tryDecrementSheetInDimension: aDimension
	
	self enter: (self measureRangeFor: aDimension) - 1 forDimension: aDimension.