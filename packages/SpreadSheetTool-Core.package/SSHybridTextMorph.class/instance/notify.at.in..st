interactive error protocol
notify: aString at: anInteger in: aStream

	self readOnly: false.
	^ super notify: aString at: anInteger in: aStream