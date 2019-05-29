accessing
respondsTo: aSymbol

	(aSymbol = #completionController)
		ifTrue: [^ false]. "Disable autotocompletion"
	^ super respondsTo: aSymbol