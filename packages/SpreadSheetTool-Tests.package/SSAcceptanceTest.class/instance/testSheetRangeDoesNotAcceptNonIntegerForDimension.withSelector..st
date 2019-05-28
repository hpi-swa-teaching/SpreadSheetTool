testing
testSheetRangeDoesNotAcceptNonIntegerForDimension: aDimension withSelector: aSheetRangeSelector
	"Acceptance test for #21 (When I enter an invalid number into the row or column count input field, an error message is shown that explains the problem. The old size is kept then and no debugger window appears.)"

	self fixturesForInvalidDimensionValues do: [:value |
		| oldSheetRange |
		oldSheetRange := self find: aSheetRangeSelector.
		self
			should: [
				self
					shouldnt: [(self subject findByBalloon: aDimension)
						sendClearTextField;
						sendKeys: value;
						sendControlSave]
					raise: Exception]
			raise: ProvideAnswerNotification
			butHandleException: [:notification |
				self
					assert: (notification messageText asLowercase includesSubstring: 'invalid')
					description: 'The error message should be user-friendly! I have to know that, I am a computer.'].
		self assert: oldSheetRange equals: (self find: aSheetRangeSelector)]