contents
contents

	^ browser messageListIndex > 0
		ifFalse: [self helpText]
		ifTrue: [browser selectedMessage]