running
runCase

	^ [[super runCase]
		on: ProvideAnswerNotification
		do: [:notification | self fail: ('Test tried to show a user dialog that was not handled ("{1}")'
			format: {notification messageText})]]
				on: TestResult inconclusive
				do: #signal