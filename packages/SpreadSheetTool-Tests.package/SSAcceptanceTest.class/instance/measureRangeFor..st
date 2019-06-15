tools
measureRangeFor: aDimension

	| selector |
	selector := ((aDimension withoutTrailing: 's'), #count ssWithFirstCharacterUppercase) asSymbol.
	^ self in: (#measure, selector asString ssWithFirstCharacterUppercase) asSymbol