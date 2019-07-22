initialize-release
addDefaultConfigurations

	self
		addKnownConfiguration: ((self newFor: SSHybridFormulaModel)
			constructor: #parent:embeddedFormula:;
			builderSelector: #createSpecWith:;
			contentGetter: #output;
			displaysString: true;
			yourself);
		addKnownConfiguration: ((self newFor: SSEvaluatorModel)
			contentGetter: #object;
			contentSetter: #object:;
			understandsNil: false;
			yourself).