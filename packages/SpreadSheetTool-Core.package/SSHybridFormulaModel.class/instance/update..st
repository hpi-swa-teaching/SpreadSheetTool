as yet unclassified
update: what

	what = #input ifTrue: [self editContents: self formula input].
	what = #output ifTrue: [
		morph isEditing ifFalse: [self contentsChanged]].
	^ super update: what