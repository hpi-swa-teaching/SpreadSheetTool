toolbuilder
specForSetterButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'Setter';
		help: 'Edit setter for this cell';
		model: self;
		action: #switchSetter;
		state: #isSetterIndicated;
		yourself