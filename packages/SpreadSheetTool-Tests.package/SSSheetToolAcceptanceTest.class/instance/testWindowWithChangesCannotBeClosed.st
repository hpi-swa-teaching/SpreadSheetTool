testing
testWindowWithChangesCannotBeClosed
	"Test for #10 (Simple Menu)"

	| someContent cell dialogs dialog|
	someContent := 'Carpe Squeak'.
	
	cell := self findCellAt: (self rowCount * self columnCount / 2) truncated.
	cell sendKeys: someContent.
	
	dialogs := self 
		findWindowsOpenedWhile: [self subject delete]
		in: [UserDialogBoxMorph allInstances].
			
	self
		assert: 1 equals: dialogs size description: 'Expected a dialog but it wasn''t shown'; 
		assert: self subject owner notNil.
	
	dialog := MTFMorphWrapper newWith: dialogs anyOne.
	(dialog findByLabel: 'No (n)') click.	
	
	self assert: self subject owner notNil.
	