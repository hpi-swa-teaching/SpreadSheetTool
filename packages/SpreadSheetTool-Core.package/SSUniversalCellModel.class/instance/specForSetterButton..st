toolbuilder
specForSetterButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'Setter';
		help: 'Edit the setter formula for this cell';
		model: self;
		action: #switchSetter;
		state: #isSetterIndicated;
		yourself