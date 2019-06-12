*SpreadSheetTool-Core-compatibility-private
eventCharacterModifiesText: aCharacter

	^ (self class nonTextModificationCharacterSet includes: aCharacter) not