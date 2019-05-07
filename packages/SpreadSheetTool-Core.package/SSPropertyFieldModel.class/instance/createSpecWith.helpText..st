toolbuilder
createSpecWith: aBuilder helpText: aText

	^ (super createSpecWith: aBuilder)
		help: aText;
		yourself