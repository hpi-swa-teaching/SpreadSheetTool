tools
deleteSheetByName: aName

	^ self
		should: [self performSheetAction: self deleteSheetLabel byName: aName]
		notify: 'delete'
		thenAnswer: true