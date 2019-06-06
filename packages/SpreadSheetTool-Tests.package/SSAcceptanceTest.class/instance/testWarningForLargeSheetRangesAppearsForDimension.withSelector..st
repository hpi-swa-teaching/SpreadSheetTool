testing
testWarningForLargeSheetRangesAppearsForDimension: aDimension withSelector: aSheetRangeSelector
	"Acceptance test for #21"

	self
		should: [self enter: self someVeryLargeNumber forDimension: aDimension]
		raise: ProvideAnswerNotification
		butHandleException: [:notification |
			self
				assert: (notification messageText asLowercase includesSubstring: 'long time')
				description: 'The error message should be user-friendly! I have to know that, I am a computer.']