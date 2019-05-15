labeling
generateLabel

	| number label |
	label := OrderedCollection new.
	number := self index.
	[number > 0] whileTrue: [
		label addFirst: (Character codePoint: $A codePoint + (number - 1 \\ 26)).
		number := number - 1 // 26].
	^ String withAll: label