toolbuilder
createSpecWith: aBuilder

	^ (super createSpecOfKind: #pluggableCodePaneSpec with: aBuilder)
		setText: #saveContents:;
		softLineWrap: true;
		yourself