tools
useInlineSyntaxErrorsDuring: aBlock

	^ Preferences
		setFlag: #'SSSheetTool>>useInlineSyntaxErrors'
		toValue: true
		during: aBlock