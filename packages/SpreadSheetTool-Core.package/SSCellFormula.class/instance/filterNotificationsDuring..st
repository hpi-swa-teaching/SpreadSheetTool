evaluation
filterNotificationsDuring: aBlock

	self isHybrid ifFalse: [^ aBlock value].
	^ aBlock
		on: UndeclaredVariable
		do: [:notification | notification
			openMenuIn: [:labels :lines :caption |
				| goodIndices goodLabels choice |
				goodIndices := (labels asIndexDictionary
					reject: [:label | 'declare*' match: label]) keys.
				goodLabels := labels copyAtIndices: goodIndices.
				choice := UIManager default
					chooseFrom: goodLabels
					lines: (labels copyAtIndices: goodIndices)
					title: caption.
				(#(0 '' nil) includes: choice)
					ifFalse: [labels indexOf: (choice isString
						ifTrue: [choice]
						ifFalse: [goodLabels at: choice])]
					ifTrue: [0]]]