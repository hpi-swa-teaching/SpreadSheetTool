*SpreadSheetTool-Core-converting
dithered: aCollector

	| error |
	error := self first class zero.
	^ self collect: [:value | | result |
		result := aCollector value: value + error.
		error := error + value - result.
		result]