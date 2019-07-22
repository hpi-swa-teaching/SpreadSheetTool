instance creation
parent: parent embeddedFormula: formula

	| model |
	^ (model := self new)
		parent: parent;
		formula: formula;
		yourself