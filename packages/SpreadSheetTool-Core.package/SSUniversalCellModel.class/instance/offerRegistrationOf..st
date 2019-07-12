interaction
offerRegistrationOf: config

	(UIManager default confirm: (
'Would you like to set this configuration as default for {1}?'
			format: {config modelClass}))
		ifTrue: [SSModelConfiguration addKnownConfiguration: config].