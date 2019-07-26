*SpreadSheetTool-Core-converting
dithered: aCollector
	"Simple error diffusion, see my test"

	| error |
	error := self first class zero.
	^ self collect: [:value | | result |
		result := aCollector value: value + error.
		error := error + value - result.
		result]