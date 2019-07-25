*SpreadSheetTool-Core-copying
copyWithoutIndices: indices

	^ self byIndexReject: [:index | indices includes: index]