interaction
deleteSheetFromImage
	
	| selected |
	self class savedSheets ifEmpty: [
		^ UIManager inform: 'There are no sheets to delete'].
	selected := UIManager default
		chooseFromValues: self class savedSheets keys
		title: 'Delete sheet'.
	selected ifNil: [^ self].
	(self confirm: 'Do you really want to delete {1}?' with: selected) 
	 	ifTrue: [self class removeSheetNamed: selected].