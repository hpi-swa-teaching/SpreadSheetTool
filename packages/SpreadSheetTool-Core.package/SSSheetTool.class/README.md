I represent the UI of a SqueakSheet. I support computing dependencies using true Smalltalk formulae. I can inspect an arbitrary subject using exchangable models.

First, initialize the package using
	SSSheetTool initialize.

Open an instance of me using TheWorldMainDockingBar, or evaluate one of these:
	SSSheetTool open.
	SSSheetTool openOn: anObject.
	anObject sheet.
You can also activate me using the context menu of any code and choosing 'sheet it'. Or open the debugging menu of a halo and select 'Inspect with SqueakSheet'.