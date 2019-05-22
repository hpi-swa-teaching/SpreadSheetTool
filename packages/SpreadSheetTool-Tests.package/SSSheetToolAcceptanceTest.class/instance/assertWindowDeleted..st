assertions
assertWindowDeleted: aWindow

	self
		deny: aWindow model notNil
		description: 'The window should have abandoned'.