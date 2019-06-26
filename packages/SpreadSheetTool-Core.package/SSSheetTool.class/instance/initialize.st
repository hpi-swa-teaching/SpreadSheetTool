initialize-release
initialize

	contentModels := SSSheet newWithTool: self.
	cellMorphs := Dictionary new.
	
	contentModels autoEvaluateActivated: true.