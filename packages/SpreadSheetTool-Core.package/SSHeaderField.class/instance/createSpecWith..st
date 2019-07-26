toolbuilder
createSpecWith: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #contents;
		setText: #contents:;
		editText: #contents:;
		color: #backgroundColor;
		textColor: #foregroundColor;
		font: self font;
		yourself