*SpreadSheetTool-Tests-instance creation
newWith: Morphs withDelay: aNumber
	|wrapper|
	wrapper := self new.
	wrapper morphs: Morphs asOrderedCollection.
	wrapper delay: aNumber.
	^wrapper