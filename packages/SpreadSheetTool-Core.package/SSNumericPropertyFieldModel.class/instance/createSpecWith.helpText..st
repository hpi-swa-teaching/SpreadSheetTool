toolbuilder
createSpecWith: aBuilder helpText: aText

	^ (self createSpecWith: aBuilder)
		editText: nil;
		setText: #contents:notifying:;
		help: aText;
		softLineWrap: false;
		yourself