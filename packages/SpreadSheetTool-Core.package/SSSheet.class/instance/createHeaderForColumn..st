private
createHeaderForColumn: aColumn

	^ (SSHeaderModel column: aColumn)
		addDependent: parent;
		yourself