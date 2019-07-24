testing
testNewSheetButton
	"Acceptance test for #10 (Simple Menu)"

	| button |
	button := self subject findUniqueByLabel: 'New sheet'.
	self assertToolWindowOpensWhile: [button click].