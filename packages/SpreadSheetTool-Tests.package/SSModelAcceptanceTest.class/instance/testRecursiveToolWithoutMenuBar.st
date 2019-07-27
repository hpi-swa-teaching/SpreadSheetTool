testing
testRecursiveToolWithoutMenuBar
	"Acceptance Test for #63 (Recursive SqueakSheet)"

	| recursiveTool |
	recursiveTool := self setUpRecursiveToolWithBuilder: #specForMainPanel:.
	self assert: (recursiveTool findByLabel: 'New sheet') isNegative.