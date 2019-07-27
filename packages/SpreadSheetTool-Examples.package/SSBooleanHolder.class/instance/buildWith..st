toolbuilder
buildWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: #label;
		action: #toggle;
		state: #state;
		yourself