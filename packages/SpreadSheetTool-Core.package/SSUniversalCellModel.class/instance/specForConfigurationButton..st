toolbuilder
specForConfigurationButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'Configuration';
		help: 'Define a different configuration for this model';
		model: self;
		action: #changeConfiguration;
		yourself