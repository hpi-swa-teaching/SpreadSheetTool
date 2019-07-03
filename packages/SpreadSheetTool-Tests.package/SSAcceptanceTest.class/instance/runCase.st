running
runCase

	[[super runCase]
		on: ProvideAnswerNotification
		do: [self fail: 'Test tried to show a user dialog that was not handled']]
			on: TestResult inconclusive
			do: #signal