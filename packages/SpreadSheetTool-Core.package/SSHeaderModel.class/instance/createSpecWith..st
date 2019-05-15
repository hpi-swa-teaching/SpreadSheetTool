toolbuilder
createSpecWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		getText: #label;
		color: #backgroundColor;
		textColor: #foregroundColor;
		yourself