private
createHeaderForColumn: aColumn

	^ (SSHeaderField column: aColumn)
		addDependent: self tool;
		yourself