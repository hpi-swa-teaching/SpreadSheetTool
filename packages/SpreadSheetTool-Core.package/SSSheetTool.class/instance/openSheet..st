interaction
openSheet: aSheet

	| tool |
	[tool := (self class sheet: aSheet).]
		on: Error
		do: [:error | ^ (UIManager confirm:
'The sheet cannot be loaded. Maybe it is corrupted
or has been created using an earlier version of SqueakSheet.

Would you like to open Debugger now?')
	ifTrue: [error pass]].
	^ tool open