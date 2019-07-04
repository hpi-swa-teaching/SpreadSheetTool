toolbuilder
createSpecWith: aBuilder

	^ (super createSpecOfKind: #pluggableInputFieldSpec with: aBuilder)
		editText: #editContents:;
		softLineWrap: true;
		color: #backgroundColor;
		textColor: #foregroundColor;
		font: self font;
		yourself