running
performTest

	Preferences
		setFlag: #openToolsAttachedToMouseCursor
		toValue: false
		during: [
			self setUseInlineSyntaxErrorsTo: false during: [
				^ super performTest]].