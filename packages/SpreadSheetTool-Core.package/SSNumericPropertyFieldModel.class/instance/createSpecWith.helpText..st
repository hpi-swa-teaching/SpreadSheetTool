toolbuilder
createSpecWith: aBuilder helpText: aText

	^ (super createSpecOfKind: #pluggableInputFieldSpec with: aBuilder)
		setText: #contents:notifying:;
		help: aText;
		softLineWrap: false;
		yourself