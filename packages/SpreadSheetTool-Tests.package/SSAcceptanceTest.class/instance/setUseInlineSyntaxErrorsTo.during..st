running
setUseInlineSyntaxErrorsTo: value during: aBlock

	SSSheetTool useInlineSyntaxErrors in: [:previous |
		SSSheetTool useInlineSyntaxErrors: value.
		[^ aBlock value]
			ensure: [SSSheetTool useInlineSyntaxErrors: previous]].