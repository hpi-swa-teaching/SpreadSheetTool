*SpreadSheetTool-Core-enumerating
groupByUniqueKey: keyBlock

	^ (self collect: [:item | (keyBlock value: item) -> item])
		as: Dictionary