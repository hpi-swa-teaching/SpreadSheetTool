toolbuilder
createSpecWith: aBuilder helpText: aText

	^ (self createSpecOfKind: #pluggableInputFieldSpec with: aBuilder)
		setText: #contents:notifying:;
		help: aText;
		softLineWrap: false;
		yourself