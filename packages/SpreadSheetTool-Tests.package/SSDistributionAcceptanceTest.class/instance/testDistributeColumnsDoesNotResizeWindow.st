testing
testDistributeColumnsDoesNotResizeWindow
	"Test for #8 (Distribute rows/columns)"

	| bounds |
	bounds := self subject bounds.
	self distribute: #columns.
	self assert: self subject bounds equals: bounds.