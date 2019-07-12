initialize-release
initialize

	contentModels := SSSheet newWithParent: self.
	cellMorphs := Dictionary new.
	
	contentModels
		rowCount: 1 columnCount: 1;
		autoEvaluateActivated: true.
	self basicSteppingActivated: true.