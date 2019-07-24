running
changePreferencesDuring: aBlock

	^ Preferences
		setFlags: {
			#openToolsAttachedToMouseCursor -> false.
			#'ECPreferences>>smartCharacters' -> false.
			#'SSSheetTool>>useInlineSyntaxErrors' -> false }
		during: aBlock