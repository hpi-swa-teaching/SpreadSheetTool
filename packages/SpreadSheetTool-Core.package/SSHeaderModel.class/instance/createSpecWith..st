toolbuilder
createSpecWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		getText: #label;
		readOnly: true;
		color: #backgroundColor;
		textColor: #foregroundColor;
		font: self font;
		yourself