dependencies
update: what

	(#(object contents) includes: what) ifTrue: [
		^ self update: what with: self object].
	
	^ super update: what