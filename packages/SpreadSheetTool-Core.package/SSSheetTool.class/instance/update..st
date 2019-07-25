interaction
update: what

	what = #contents ifTrue: [hasUnsavedChanges := true "halt"].
	^ super update: what