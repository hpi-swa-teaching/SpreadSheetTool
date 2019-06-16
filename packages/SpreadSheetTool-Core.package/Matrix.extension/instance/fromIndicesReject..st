*SpreadSheetTool-Core
fromIndicesReject: aBlock

	^ self fromIndicesSelect: [:r :c | (aBlock value: r value: c) == false]