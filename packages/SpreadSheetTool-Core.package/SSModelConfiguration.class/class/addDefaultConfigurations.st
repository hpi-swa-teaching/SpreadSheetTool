initialize-release
addDefaultConfigurations

	self
		addKnownConfiguration: ((self newFor: SSCellModel)
			constructor: #parent:sheet:rowIndex:columnIndex:;
			builderSelector: #createSpecWith:;
			contentGetter: #outputContents;
			contentSetter: #acceptContents:;
			displaysString: true;
			yourself);
		addKnownConfiguration: ((self newFor: SSEvaluatorModel)
			contentGetter: #object;
			contentSetter: #object:;
			displaysString: true;
			yourself).