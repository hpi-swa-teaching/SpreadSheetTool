running
performTest

	Preferences
		setFlag: #openToolsAttachedToMouseCursor
		toValue: false
		during: [^ super performTest].