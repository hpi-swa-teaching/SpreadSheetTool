forwarding
contents

	^ (model class canUnderstand: #contents)
		ifTrue: [model contents]
		ifFalse: [self object flag: #todo "chain is still suboptimal"]