*SpreadSheetTool-Tests-extensions
assert: expected closeTo: actual

	^self
		assert: (expected closeTo: actual)
		description: [ self comparingStringBetween: expected and: actual ]