*SpreadSheetTool-Tests-running
runCase: aTestCase
	| testCasePassed |
	testCasePassed := true.
	[[aTestCase runCase] 
			on: self class failure
			do: 
				[:signal | 
				signal isFailure
					ifTrue: [failures add: aTestCase]
					ifFalse: [Transcript showln: (
						'{1}: {2}' format: {aTestCase. signal})].
				testCasePassed := false.
				signal return: false]]
					on: self class error
					do:
						[:signal |
						errors add: aTestCase.
						testCasePassed := false.
						signal return: false].
	testCasePassed ifTrue: [passed add: aTestCase]