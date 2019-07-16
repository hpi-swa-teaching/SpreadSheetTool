testing
testRecursiveToolWithMenuBar

	| recursiveTool |
	recursiveTool := self setUpRecursiveToolWithBuilder: #buildWith:.
	self assert: (recursiveTool findByLabel: 'New sheet') isPositive.