private
createHeaderForRow: aRow

	^ (SSHeaderModel row: aRow)
		addDependent: parent;
		yourself