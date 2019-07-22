updating
update: what

	what = #contents ifTrue: [self formulaSelection: nil].
	what = modelConfig contentGetter ifTrue: [
		^ self modelChanged: self modelContents].
	
	^ super update: what