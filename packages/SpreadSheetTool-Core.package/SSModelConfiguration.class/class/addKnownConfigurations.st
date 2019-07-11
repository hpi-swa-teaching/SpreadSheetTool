initialize-release
addKnownConfigurations

	knownConfigurations
		at: SSCellModel put: ((self newFor: SSCellModel)
			constructor: #parent:sheet:rowIndex:columnIndex:;
			builderSelector: #createSpecWith:;
			contentGetter: #outputContents;
			contentSetter: #acceptContents:;
			displaysString: true;
			yourself);
		at: SSEvaluatorModel put: ((self newFor: SSEvaluatorModel)
			contentGetter: #object;
			contentSetter: #object:;
			displaysString: true;
			yourself).