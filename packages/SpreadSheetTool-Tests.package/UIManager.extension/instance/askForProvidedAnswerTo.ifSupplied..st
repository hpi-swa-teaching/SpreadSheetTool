*SpreadSheetTool-Tests-utilities
askForProvidedAnswerTo: queryString ifSupplied: supplyBlock

	^ (ProvideAnswerNotification signal: queryString asString) ifNotNil: supplyBlock