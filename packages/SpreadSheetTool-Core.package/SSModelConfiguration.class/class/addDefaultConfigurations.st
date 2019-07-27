initialize-release
addDefaultConfigurations

	self
		addKnownConfiguration: ((self newFor: SSHybridFormulaHolder)
			constructor: #tool:embeddedFormula:;
			builderSelector: #createSpecWith:;
			contentGetter: #output;
			displaysString: true;
			isFormulaManager: true;
			yourself);
		addKnownConfiguration: ((self newFor: SSEvaluator)
			contentGetter: #object;
			contentSetter: #object:;
			yourself).
	self
		addKnownConfiguration: ((self newFor: Inspector)
			constructor: #new;
			builderSelector: #buildWith:;
			contentGetter: #object;
			contentSetter: #object:);
		addKnownConfiguration: ((self newFor: ObjectExplorer)
			constructor: #new;
			builderSelector: #buildWith:;
			contentGetter: #object;
			contentSetter: #rootObject:).