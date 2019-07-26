accessing
compiler

	^ compiler ifNil: [compiler := Compiler new]