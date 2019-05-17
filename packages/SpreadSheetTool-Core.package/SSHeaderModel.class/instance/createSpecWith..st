toolbuilder
createSpecWith: aBuilder

	^ (super createSpecWith: aBuilder)
		readOnly: true;
		color: #backgroundColor;
		textColor: #foregroundColor;
		font: self font;
		yourself