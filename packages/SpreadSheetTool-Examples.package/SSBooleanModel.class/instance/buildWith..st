toolbuilder
buildWith: aBuilder

	^ aBuilder pluggableCheckBoxSpec new
		model: self;
		label: #label;
		action: #toggle;
		state: #state;
		yourself