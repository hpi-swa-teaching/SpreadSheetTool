accessing
scale: aList to: aSize

	aSize <= aList size
		ifTrue: [aList removeLast: aList size - aSize]
		ifFalse: [aSize - aList size timesRepeat: [
			aList add: self headerFactory value]]