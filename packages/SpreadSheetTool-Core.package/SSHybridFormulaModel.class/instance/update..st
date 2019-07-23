as yet unclassified
update: what

	self flag: #caseOf:.
	what = #input ifTrue: [self editContents: self formula input].
	what = #output ifTrue: [
		morph isEditing ifFalse: [self contentsChanged]].
	^ super update: what