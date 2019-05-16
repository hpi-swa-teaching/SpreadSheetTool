toolbuilder
createSpecWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		getText: #label;
		color: #backgroundColor;
		textColor: #foregroundColor;
		font: self font;
		yourself