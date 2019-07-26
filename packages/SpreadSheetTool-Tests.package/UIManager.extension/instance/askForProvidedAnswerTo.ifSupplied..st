*SpreadSheetTool-Tests-compatibility-utilities
askForProvidedAnswerTo: queryString ifSupplied: supplyBlock

	^ (ProvideAnswerNotification signal: queryString asString) ifNotNil: supplyBlock