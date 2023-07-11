Class {
	#name : #BaselineOfBenjaVision,
	#superclass : #BaselineOf,
	#category : #BaselineOfBenjaVision
}

{ #category : #baselines }
BaselineOfBenjaVision >> baseline: spec [

	<baseline>
	spec for: #common do: [
		self defineDependencies: spec.
		self definePackages: spec.
		self defineGroups: spec ].
	
]

{ #category : #baselines }
BaselineOfBenjaVision >> defineDependencies: spec [

	spec
		baseline: 'Seaside3'
		with: [
			spec repository: 'github://SeasideSt/Seaside:master/repository' ];
		baseline: 'VLC'
		with: [ spec repository: 'github://JupiterJones/Pharo-LibVLC' ];
		baseline: 'SpecGtk'
		with: [ spec repository: 'github://pharo-spec/Spec-Gtk' ]
]

{ #category : #baselines }
BaselineOfBenjaVision >> defineGroups: spec [

	spec
		group: 'default'
		with: #( 'BenjaVision-Core' 'BenjaVision-Core-Tests' )
]

{ #category : #baselines }
BaselineOfBenjaVision >> definePackages: spec [

	spec
		package: 'BenjaVision-Core' with: [ spec requires: #( 'Seaside3' 'VLC' 'SpecGtk' ) ];
		package: 'BenjaVision-Core-Tests'
		with: [ spec requires: #( 'BenjaVision-Core' ) ]
]
