toolbuilder
specForGetterButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'Getter';
		help: 'Edit the getter formula for this cell';
		model: self;
		action: #switchGetter;
		state: #isGetterIndicated;
		yourself