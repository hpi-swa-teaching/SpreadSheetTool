toolbuilder
specForSteppingButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: #labelForStepping;
		action: #toggleStepping;
		state: #steppingActivated;
		help: 
'If stepping is enabled, all getter formulas will be evaluated periodically.\If stepping is disabled, they will be only reevaluated when autoevaluation is enabled, or when your manually accept them.' withCRs;
		yourself