*SpreadSheetTool-Tests-running
runCase
	"Run this TestCase. Time out if the test takes too long."

	[[self timeout: [self setUp]
		after: self timeoutForSetUp.
	self timeout: [self performTest]
		after: self timeoutForTest]
		ensure: [self tearDown]]
			on: ProvideAnswerNotification
			do: [:signal | self fail: 'Test tried to show a user dialog that was not handled']