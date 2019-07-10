initialize-release
addKnownConfigurations

	knownConfigurations
		at: SSCellModel put: ((self newFor: SSCellModel)
			constructor: #parent:sheet:rowIndex:columnIndex:;
			builderSelector: #createSpecWith:;
			contentGetter: #outputContents;
			contentSetter: #acceptContents:;
			yourself).