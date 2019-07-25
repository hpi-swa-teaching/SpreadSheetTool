private
createHeaderForRow: aRow

	^ (SSHeaderModel row: aRow parent: parent)
		addDependent: parent;
		yourself