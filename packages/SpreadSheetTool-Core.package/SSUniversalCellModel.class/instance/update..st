updating
update: what

	what = modelConfig contentGetter ifTrue: [
		^ self modelChanged: self modelContents].
	
	^ super update: what