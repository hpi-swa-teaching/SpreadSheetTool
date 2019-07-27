initialize-release
initialize

	contentSheet := SSSheet tool: self.
	cellMorphs := Dictionary new.
	
	contentSheet
		rowCount: 1 columnCount: 1;
		autoEvaluateActivated: true;
		steppingActivated: true.