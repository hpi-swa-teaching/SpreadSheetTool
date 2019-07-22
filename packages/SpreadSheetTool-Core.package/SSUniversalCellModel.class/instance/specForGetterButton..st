toolbuilder
specForGetterButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'Getter';
		help: 'Edit getter for this cell';
		model: self;
		action: #switchGetter;
		state: #isGetterIndicated;
		yourself