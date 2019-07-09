toolbuilder
specForFormulaButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'Formula';
		help: 'Define a getter and a setter for this cell';
		model: self;
		action: #changeModel;
		yourself