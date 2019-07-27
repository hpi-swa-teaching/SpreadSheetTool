testing
testNewSheetButton
	"Acceptance test for #10 (Simple Menu)"

	| button |
	button := self subject findByLabel: 'New sheet'.
	self assert: button isUnique.
	self assertToolWindowOpensWhile: [button click].