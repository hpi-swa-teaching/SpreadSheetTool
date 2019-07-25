private
createHeaderForColumn: aColumn

	^ (SSHeaderModel column: aColumn parent: parent)
		addDependent: parent;
		yourself