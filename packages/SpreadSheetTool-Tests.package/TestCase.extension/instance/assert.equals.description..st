*SpreadSheetTool-Tests-accessing
assert: expected equals: actual description: aStringOrValue

	^self
		assert: expected = actual
		description: [ aStringOrValue value , ': ',
			(self comparingStringBetween: expected and: actual) ]