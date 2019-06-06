testing
testSheetRangeDoesNotAcceptNonIntegerForDimension: aDimension withSelector: aSheetRangeSelector

	self fixturesForInvalidDimensionValues do: [:value |
		| oldSheetRange |
		oldSheetRange := self measureRangeFor: aSheetRangeSelector.
		self
			should: [self
				shouldnt: [self enter: value forDimension: aDimension]
				raise: Exception
				beyond: ProvideAnswerNotification]
			raise: ProvideAnswerNotification
			butHandleException: [:notification |
				self
					assert: (notification messageText asLowercase includesSubstring: 'invalid')
					description: 'The error message should be user-friendly! I have to know that, I am a computer.'].
		self
			assert: oldSheetRange equals: (self measureRangeFor: aSheetRangeSelector);
			assert: value equals: (self subject findByBalloon: aDimension) text asString]