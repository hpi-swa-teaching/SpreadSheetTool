event handling
acceptContents: aTextOrString

	^ [model perform: setTextSelector with: aTextOrString]
		on: Abort
		do: [false].