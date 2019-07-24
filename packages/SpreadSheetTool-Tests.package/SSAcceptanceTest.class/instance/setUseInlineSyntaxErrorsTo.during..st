running
setUseInlineSyntaxErrorsTo: value during: aBlock

	SSSheetTool useInlineSyntaxErrors in: [:previous |
		SSSheetTool useInlineSyntaxErrors: value.
		^ aBlock
			ensure: [SSSheetTool useInlineSyntaxErrors: previous]].