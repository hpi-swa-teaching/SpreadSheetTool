toolbuilder
createSpecWith: aBuilder

	^ (super createSpecOfKind: #pluggableCodePaneSpec with: aBuilder)
		editText: #editContents:;
		setText: #acceptContents:;
		softLineWrap: true;
		yourself