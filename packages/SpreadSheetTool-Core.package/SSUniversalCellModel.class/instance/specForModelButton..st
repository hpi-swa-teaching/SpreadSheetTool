toolbuilder
specForModelButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'Model';
		help: 'Define a different display or behavior for this cell';
		model: self;
		action: #changeModel;
		yourself