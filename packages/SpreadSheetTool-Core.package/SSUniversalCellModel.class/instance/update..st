updating
update: what

	what = (self modelConfig ifNotNil: #contentGetter) ifTrue: [
		^ self modelChanged: self modelContents].
	
	^ super update: what