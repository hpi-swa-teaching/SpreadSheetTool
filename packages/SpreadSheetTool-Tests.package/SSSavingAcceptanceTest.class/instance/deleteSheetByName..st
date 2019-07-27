tools
deleteSheetByName: aName

	^ self
		should: [self tryDeleteSheetByName: aName]
		notify: 'delete'
		thenAnswer: true