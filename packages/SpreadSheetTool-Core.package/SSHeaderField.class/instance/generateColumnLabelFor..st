labeling
generateColumnLabelFor: anIndex
	"Adopted from Excel"

	| number label |
	label := OrderedCollection new.
	number := anIndex.
	[number > 0] whileTrue: [
		label addFirst: (Character codePoint:
			$A codePoint + (number - 1 \\ 26)).
		number := number - 1 // 26].
	self initializeLabel: (String withAll: label).