running
setUp

	mock := SSMockingModel new.
	propertyField := self classUnderTest
		parent: mock
		getProperty: #value
		setProperty: #value:.