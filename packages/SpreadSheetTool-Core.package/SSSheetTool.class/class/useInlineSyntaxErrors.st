preferences
useInlineSyntaxErrors
	<preference: 'Use inline syntax errors'
		category: #SqueakSheet
		description:
'When enabled, syntax errors in formulas will be displayed directly in the formula cell. When disabled, a separate SyntaxError window will open.'
		type: #Boolean>

	^ useInlineSyntaxErrors ifNil: [false]