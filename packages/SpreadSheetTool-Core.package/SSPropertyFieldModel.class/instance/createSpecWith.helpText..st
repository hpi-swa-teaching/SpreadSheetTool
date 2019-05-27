toolbuilder
createSpecWith: aBuilder helpText: aText

	^ (super createSpecWith: aBuilder)
		editText: nil;
		setText: #contents:notifying:;
		help: aText;
		softLineWrap: false;
		yourself