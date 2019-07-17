running
changePreferencesDuring: aBlock

	^ Preferences
		setFlag: #openToolsAttachedToMouseCursor
		toValue: false
		during: [
			self setUseInlineSyntaxErrorsTo: false during: [
				aBlock value]].