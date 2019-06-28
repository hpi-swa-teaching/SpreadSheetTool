running
performTest

	^ [super performTest]
		on: TestResult inconclusive
		do: #signal