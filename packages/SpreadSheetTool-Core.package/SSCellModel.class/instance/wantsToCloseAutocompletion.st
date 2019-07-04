interaction
wantsToCloseAutocompletion

	^ super wantsToCloseAutocompletion or: [morph hasEditFocus not]