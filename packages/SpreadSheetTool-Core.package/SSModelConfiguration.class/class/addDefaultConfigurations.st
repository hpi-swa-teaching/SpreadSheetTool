initialize-release
addDefaultConfigurations

	self
		addKnownConfiguration: ((self newFor: SSHybridFormulaModel)
			constructor: #tool:embeddedFormula:;
			builderSelector: #createSpecWith:;
			contentGetter: #output;
			displaysString: true;
			yourself);
		addKnownConfiguration: ((self newFor: SSEvaluatorModel)
			contentGetter: #object;
			contentSetter: #object:;
			understandsNil: false;
			yourself).