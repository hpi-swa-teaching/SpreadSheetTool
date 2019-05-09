testing
testNewSheetButton
	"Test for #10 (Simple Menu)"

	|button|
	button := self subject findByLabel: 'New sheet'.
	self assert: 1 equals: button morphs size.
	
	self 
		assertWindowOpensWhile: [button click]
		in: [self findAllToolWindows]