private
createHeaderForRow: aRow

	^ (SSHeaderField row: aRow)
		addDependent: self tool;
		yourself