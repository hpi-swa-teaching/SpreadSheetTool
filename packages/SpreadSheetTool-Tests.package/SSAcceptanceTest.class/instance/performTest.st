running
performTest

	^ [super performTest]
		on: TestResult inconclusive
		do: [:signal | Transcript showln: ('{1}: {2}' format: {self. signal})]