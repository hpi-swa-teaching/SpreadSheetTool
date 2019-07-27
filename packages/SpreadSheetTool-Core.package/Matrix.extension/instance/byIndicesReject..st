*SpreadSheetTool-Core-enumerating
byIndicesReject: aBlock

	^ self byIndicesSelect: [:r :c | (aBlock value: r value: c) not]