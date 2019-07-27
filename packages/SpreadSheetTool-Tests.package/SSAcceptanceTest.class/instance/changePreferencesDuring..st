running
changePreferencesDuring: aBlock

	^ Preferences
		setFlags:
		{	#openToolsAttachedToMouseCursor -> false.
			#'SSSheetTool>>useInlineSyntaxErrors' -> false	},
				((Smalltalk hasClassNamed: #ECMenuMorph)
					ifTrue: [{ #'ECPreferences>>smartCharacters' -> false }]
					ifFalse: [#()])
		during: aBlock