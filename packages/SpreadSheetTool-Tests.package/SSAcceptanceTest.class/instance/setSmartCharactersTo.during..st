running
setSmartCharactersTo: value during: aBlock

	| oldValue |
	Smalltalk at: #ECPreferences ifAbsent: [^ aBlock value].
	oldValue := ECPreferences smartCharacters.
	ECPreferences smartCharacters: value.
	aBlock ensure: [ECPreferences smartCharacters: oldValue].