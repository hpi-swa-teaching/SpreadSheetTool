initialize-release
initialize

	super initialize.
	browser := Browser new
		setClass: SSEmbeddedFormula;
		selectMessageCategoryNamed: #'accessing sheet';
		addDependent: self;
		yourself.