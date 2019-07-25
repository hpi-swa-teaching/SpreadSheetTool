interaction
update: what

	what = #contents ifTrue: [hasUnsavedChanges := true].
	^ super update: what