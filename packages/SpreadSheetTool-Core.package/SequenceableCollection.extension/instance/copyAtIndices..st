*SpreadSheetTool-Core-copying
copyAtIndices: indices

	^ self byIndexSelect: [:index | indices includes: index]