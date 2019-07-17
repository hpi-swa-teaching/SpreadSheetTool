testing
testRecursiveToolWithoutMenuBar

	| recursiveTool |
	recursiveTool := self setUpRecursiveToolWithBuilder: #specForMainPanel:.
	self assert: (recursiveTool findByLabel: 'New sheet') isNegative.