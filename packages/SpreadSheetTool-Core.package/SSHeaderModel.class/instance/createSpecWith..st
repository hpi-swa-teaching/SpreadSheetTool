toolbuilder
createSpecWith: aBuilder

	^ (super createSpecWith: aBuilder)
		color: #backgroundColor;
		textColor: #foregroundColor;
		font: self font;
		yourself