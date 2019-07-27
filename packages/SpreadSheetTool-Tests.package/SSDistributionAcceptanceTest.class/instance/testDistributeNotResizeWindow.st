testing
testDistributeNotResizeWindow
	"Test for #8 (Distribute rows/columns)"

	self dimensionsDo: [:rowsOrColumns |
		| bounds |
		bounds := self subject bounds.
		self distribute: rowsOrColumns.
		self assert: self subject bounds equals: bounds].