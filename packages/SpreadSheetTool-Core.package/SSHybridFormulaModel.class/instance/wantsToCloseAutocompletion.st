Tools
wantsToCloseAutocompletion

	^ super wantsToCloseAutocompletion or: [self morph hasEditFocus not]