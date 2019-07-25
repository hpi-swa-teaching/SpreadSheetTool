updating
update: what

	what = (modelConfig ifNotNil: #contentGetter) ifTrue: [
		^ self modelChanged: self modelContents].
	
	^ super update: what