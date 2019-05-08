accessing
respondsTo: aSymbol

	(aSymbol = #completionController)
		ifTrue: [^ false].
	^ super respondsTo: aSymbol