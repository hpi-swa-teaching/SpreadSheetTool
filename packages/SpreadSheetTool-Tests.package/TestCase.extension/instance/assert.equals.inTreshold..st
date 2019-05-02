*SpreadSheetTool-Tests-accessing
assert: expected equals: actual inTreshold: treshold

	^self
		assert: (expected - actual) abs <= treshold
		description: [ self comparingStringBetween: expected and: actual treshold: treshold ]
