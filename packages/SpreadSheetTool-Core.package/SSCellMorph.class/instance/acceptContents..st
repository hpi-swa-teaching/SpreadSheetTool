event handling
acceptContents: aTextOrString

	^ [model perform: setTextSelector with: aTextOrString.
	true]
		on: Abort
		do: [false].