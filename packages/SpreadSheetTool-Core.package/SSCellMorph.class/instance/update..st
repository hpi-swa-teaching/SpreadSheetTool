as yet unclassified
update: what

	what = #contents ifTrue: [
		self isEditing ifTrue: [^ self]].
	^ super update: what