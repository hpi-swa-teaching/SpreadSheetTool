evaluation
filterNotificationsWhile: aBlock

	self isHybrid ifFalse: [^ aBlock value].
	^ aBlock
		on: UndeclaredVariable
		do: [:notification | notification
			openMenuIn: [:labels :lines :caption |
				| badIndices goodLines choice |
				badIndices := (labels asIndexDictionary
					select: [:label | 'declare*' match: label]) keys.
				goodLines := labels copyWithoutIndices: badIndices.
				choice := UIManager default
					chooseFrom: goodLines
					lines: (labels copyWithoutIndices: badIndices)
					title: caption.
				(#(0 '' nil) includes: choice)
					ifFalse: [labels indexOf: (choice isString
						ifTrue: [choice]
						ifFalse: [goodLines at: choice])]
					ifTrue: [0]]]