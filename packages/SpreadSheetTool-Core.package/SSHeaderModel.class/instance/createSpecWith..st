toolbuilder
createSpecWith: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #contents;
		setText: #contents:;
		editText: #contents:;
		softLineWrap: true;
		color: #backgroundColor;
		textColor: #foregroundColor;
		font: self font;
		yourself