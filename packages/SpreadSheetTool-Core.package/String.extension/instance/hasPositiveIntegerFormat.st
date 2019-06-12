*SpreadSheetTool-Core-testing
hasPositiveIntegerFormat

	| radixMatch radix number digits |
	(self matchesRegex: '\d+') ifTrue: [^ true].
	radixMatch := '^(\d+)r(.*)$' asRegex uniqueSubmatchIn: self ifNotUnique: [^ false].
	radix := (radixMatch at: 2) asNumber.
	radix > 1 ifFalse: [^ false].
	number := radixMatch at: 3.
	digits := Number digitsForRadix: radix.
	^ (number asLowercase copyWithoutAll: digits) isEmpty