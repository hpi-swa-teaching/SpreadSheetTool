*SpreadSheetTool-Core
byIndicesReject: aBlock

	^ self byIndicesSelect: [:r :c | (aBlock value: r value: c) == false]