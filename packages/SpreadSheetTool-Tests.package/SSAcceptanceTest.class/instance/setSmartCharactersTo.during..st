running
setSmartCharactersTo: value during: aBlock

	| oldValue |
	oldValue := ECPreferences smartCharacters.
	ECPreferences smartCharacters: value.
	aBlock ensure: [ECPreferences smartCharacters: oldValue].