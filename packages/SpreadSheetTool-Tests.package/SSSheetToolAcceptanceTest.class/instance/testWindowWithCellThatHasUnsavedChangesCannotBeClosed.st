testing
testWindowWithCellThatHasUnsavedChangesCannotBeClosed
	"Test for #10 (Simple Menu)"

	| someContent cell dialogs dialog |
	someContent := 'Carpe Squeak'.
	cell := self findAnyCell.
	
	cell sendKeys: someContent.
	
	dialogs := self findWindowsOpenedWhile: [self subject delete] in: [UserDialogBoxMorph allInstances].
	self
		assert: dialogs size = 1 description: 'Expected a dialog but it wasn''t shown';
		assert: self subject owner notNil description: 'The window should not have abandoned'.
	
	dialog := MTFMorphWrapper newWith: dialogs anyOne.
	
	(dialog findByLabel: 'No (n)') click.
	
	self assert: self subject owner notNil.