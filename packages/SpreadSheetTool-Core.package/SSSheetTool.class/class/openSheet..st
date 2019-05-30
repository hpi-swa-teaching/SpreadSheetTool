open and save
openSheet: aSheet

	| tool |
	[tool := (self sheet: aSheet).]
		on: Error
		do: [^ UIManager inform:
'The sheet cannot be loaded. Maybe it is corrupted
or has been created using an earlier version of SqueakSheet?'].
	^ tool open