testing-autosave
expectedFailures

	| tests |
	tests := super expectedFailures asSet.
	(Date current < (Date year: 2019 month: 07 day: 19))
		ifTrue: [tests add: #testCellAutoSavesNonFormulaValueAfterPrintIt.
			"ticking time bomb, we will not fix this bug in before iteration §10"].
	^ tests
	