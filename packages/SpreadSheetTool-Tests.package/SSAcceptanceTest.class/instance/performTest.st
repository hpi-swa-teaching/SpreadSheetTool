running
performTest

	Preferences
		setFlags: { #openToolsAttachedToMouseCursor -> false. }
		during: [
			SSSheetTool useInlineSyntaxErrors in: [:previous |
				SSSheetTool useInlineSyntaxErrors: false.
				[^ super performTest]
					ensure: [SSSheetTool useInlineSyntaxErrors: previous]]].