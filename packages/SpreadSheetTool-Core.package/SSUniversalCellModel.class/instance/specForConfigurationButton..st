toolbuilder
specForConfigurationButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'Configuration';
		help: 'Define a different configuration for the current model';
		model: self;
		action: #changeConfiguration;
		yourself