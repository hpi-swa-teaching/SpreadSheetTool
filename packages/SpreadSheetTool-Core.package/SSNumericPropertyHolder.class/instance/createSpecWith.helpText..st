toolbuilder
createSpecWith: aBuilder helpText: aText

	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #contents;
		setText: #contents:notifying:;
		help: aText;
		softLineWrap: false;
		yourself