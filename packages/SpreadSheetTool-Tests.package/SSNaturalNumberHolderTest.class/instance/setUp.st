running
setUp

	super setUp.
	
	mock := SSMockingModel new.
	model := self classUnderTest
		parent: mock
		getProperty: #value
		setProperty: #value:.