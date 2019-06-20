tools
invertDimension: aString 
	
	('row*' match: aString) ifTrue: [^ 'columns'].
	('column*' match: aString) ifTrue: [^ 'rows'].
	self error: 'Invalid dimension'.