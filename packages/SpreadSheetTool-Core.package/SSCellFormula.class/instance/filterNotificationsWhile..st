evaluation
filterNotificationsWhile: aBlock

	^ aBlock
		on: UndeclaredVariable
		do: [:notification | notification
			openMenuIn: [:labels :lines :caption |
				(UIManager default
					chooseFrom: (labels allButFirst: 2)
					lines: (labels allButFirst: 2)
					title: caption) + 2]]