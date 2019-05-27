testing
testNewSheetButton
	"Test for #10 (Simple Menu)"

	| button |
	button := self subject findByLabel: 'New sheet'.
	
	self
		assert: button morphs hasSingle
		description: '''New sheet'' button not found'.
	
	self assertWindowOpensWhile: [button click].