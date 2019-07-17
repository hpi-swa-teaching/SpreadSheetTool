testing
wantsToCloseAutocompletion

	^ super wantsToCloseAutocompletion or: [morph hasEditFocus not]