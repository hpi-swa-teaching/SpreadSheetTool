as yet unclassified
initialize

	sheet := SSSheet new.
	cellModels := SSSheet new
		cellFactory: [SSCellModel newWithParent: self].