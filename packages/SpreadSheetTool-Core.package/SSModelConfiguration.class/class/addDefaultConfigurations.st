initialize-release
addDefaultConfigurations

	self
		addKnownConfiguration: ((self newFor: SSFormulaModel)
			constructor: #parent:sheet:rowIndex:columnIndex:;
			builderSelector: #createSpecWith:;
			contentGetter: #value;
			contentSetter: #acceptContents:;
			displaysString: true;
			yourself);
		addKnownConfiguration: ((self newFor: SSEvaluatorModel)
			contentGetter: #object;
			contentSetter: #object:;
			understandsNil: false;
			yourself).