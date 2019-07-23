testing
aboutToStyle: aStyler

	aStyler
		classOrMetaClass: self selectedClass;
		parseAMethod: false.
	(aStyler class canUnderstand: #context:)
		ifTrue: [aStyler context: self formula context].
	^ true