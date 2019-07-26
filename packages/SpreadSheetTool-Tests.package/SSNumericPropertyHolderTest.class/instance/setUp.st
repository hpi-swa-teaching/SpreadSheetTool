running
setUp

	super setUp.
	
	mock := SSMockingTool new.
	model := self classUnderTest
		owner: mock
		getProperty: #value
		setProperty: #value:.