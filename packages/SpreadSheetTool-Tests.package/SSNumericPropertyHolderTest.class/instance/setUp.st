running
setUp

	super setUp.
	
	mock := SSMockingModel new.
	model := self classUnderTest
		owner: mock
		getProperty: #value
		setProperty: #value:.