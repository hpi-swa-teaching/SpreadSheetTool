interaction
openSheet: aSheet

	^ [aSheet veryDeepCopy
		subject: self subject;
		open]
			on: Error
			do: [:error | (UIManager confirm:
'The sheet cannot be loaded. Maybe it is corrupted
or has been created using an earlier version of SqueakSheet.

Would you like to open Debugger now?')
				ifTrue: [^ error pass]]