accessing
scale: aList to: aSize factory: aFactory

	aSize <= aList size
		ifTrue: [aList removeLast: aList size - aSize]
		ifFalse: [aList size to: aSize do: [:index |
			aList add: (aFactory value: index + 1)]]