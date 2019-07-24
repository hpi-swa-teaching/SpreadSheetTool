running
changePreferencesDuring: aBlock

	^ Preferences
		setFlag: #openToolsAttachedToMouseCursor
		toValue: false
		during: [
			self setSmartCharactersTo: false during: [
				self setUseInlineSyntaxErrorsTo: false during: [
					aBlock value]]]