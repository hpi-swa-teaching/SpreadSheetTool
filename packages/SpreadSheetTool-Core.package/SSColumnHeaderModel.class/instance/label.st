accessing
label

	^ label
		ifNil: [label := self generateLabel]