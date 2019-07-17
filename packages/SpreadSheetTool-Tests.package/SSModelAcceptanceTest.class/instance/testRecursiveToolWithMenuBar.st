testing
testRecursiveToolWithMenuBar
	"Acceptance Test for #63 (Recursive SqueakSheet)"

	| recursiveTool |
	recursiveTool := self setUpRecursiveToolWithBuilder: #buildWith:.
	self assert: (recursiveTool findByLabel: 'New sheet') isPositive.