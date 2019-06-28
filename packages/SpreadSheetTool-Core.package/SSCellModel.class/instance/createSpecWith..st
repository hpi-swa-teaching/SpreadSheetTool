toolbuilder
createSpecWith: aBuilder

	^ (super createSpecOfKind: #pluggableTextSpec with: aBuilder)
		editText: #editContents:;
		setText: #acceptContents:;
		softLineWrap: true;
		yourself