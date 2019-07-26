initialize-release
initialize

	contentModels := SSSheet tool: self.
	cellMorphs := Dictionary new.
	
	contentModels
		rowCount: 1 columnCount: 1;
		autoEvaluateActivated: true;
		steppingActivated: true.