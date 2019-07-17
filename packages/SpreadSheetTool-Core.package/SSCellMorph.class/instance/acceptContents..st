event handling
acceptContents: aTextOrString

	[self model perform: self setTextSelector with: aTextOrString]
		on: Abort
		do: [^ false].
	^ true