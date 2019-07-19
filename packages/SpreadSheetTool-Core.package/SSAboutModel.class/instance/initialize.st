initialize-release
initialize

	super initialize.
	browser := Browser new
		setClass: SSCell;
		selectMessageCategoryNamed: #'accessing sheet';
		addDependent: self;
		yourself.