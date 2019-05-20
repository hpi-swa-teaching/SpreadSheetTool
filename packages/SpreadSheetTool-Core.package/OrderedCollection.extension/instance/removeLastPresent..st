*SpreadSheetTool-Core-removing
removeLastPresent: number

	| n |
	n := number clampHigh: self size.
	n strictlyPositive
		ifTrue: [^ self removeLast: n]