assertions
assertWindowNotDeleted: aWindow

	self
		assert: aWindow model notNil
		description: 'The window should not have abandoned'.