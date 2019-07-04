initialize-release
initialize

	contentModels := SSSheet newWithParent: self.
	cellMorphs := Dictionary new.
	
	contentModels autoEvaluateActivated: true.