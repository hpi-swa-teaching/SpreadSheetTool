testing
testNewSheetButton
	"Test for #10 (Simple Menu)"

	| button |
	button := self subject findUniqueByLabel: 'New sheet'.
	
	self assertWindowOpensWhile: [button click].