*SpreadSheetTool-Core-menu commands
squeakIt
	
	self handleEdit:
		[textMorph editor evaluateSelectionAndDo: [:result | result squeak]]