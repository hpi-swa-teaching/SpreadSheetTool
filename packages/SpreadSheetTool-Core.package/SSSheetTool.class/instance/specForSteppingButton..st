toolbuilder
specForSteppingButton: aBuilder

	| spec |
	spec := aBuilder pluggableButtonSpec new
		model: self;
		label: #labelForStepping;
		action: #toggleStepping;
		state: #steppingActivated;
		yourself.
	^ self makeToggleButton: spec with: aBuilder