initialize-release
initialize

	super initialize.
	browser := Browser new
		setClass: SSCellFormula;
		selectMessageCategoryNamed: #'accessing sheet';
		addDependent: self;
		yourself.