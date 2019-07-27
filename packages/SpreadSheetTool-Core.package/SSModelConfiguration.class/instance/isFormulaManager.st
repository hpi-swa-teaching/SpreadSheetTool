accessing
isFormulaManager
	"If true, the model care itself about the formulae"

	^ isFormulaManager ifNil: [false]