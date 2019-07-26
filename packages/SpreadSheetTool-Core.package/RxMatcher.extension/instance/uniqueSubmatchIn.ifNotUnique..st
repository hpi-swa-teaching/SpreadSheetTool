*SpreadSheetTool-Core-compatibility-match enumeration
uniqueSubmatchIn: aString ifNotUnique: aBlock

	| submatches |
	submatches := self submatchesIn: aString.
	submatches hasSingle ifFalse: aBlock.
	^ submatches anyOne