Class {
	#name : #BVGeneratorUI,
	#superclass : #SpPresenter,
	#instVars : [
		'versionLabel',
		'videoCanvas'
	],
	#classVars : [
		'Instance'
	],
	#category : #'BenjaVision-Core'
}

{ #category : #singleton }
BVGeneratorUI class >> instance [
	^ Instance ifNil: [ Instance := self new ]
]

{ #category : #launch }
BVGeneratorUI class >> launch [

	<sampleInstance>
	^ self new open
]

{ #category : #singleton }
BVGeneratorUI class >> resetInstance [
	Instance := nil
]

{ #category : #layout }
BVGeneratorUI >> defaultLayout [

	^ SpFrameLayout new
]

{ #category : #initialization }
BVGeneratorUI >> initialize [
	super initialize.
	self application: BVApplication new
]

{ #category : #initialization }
BVGeneratorUI >> initializePresenters [

	versionLabel := self newLabel.
	videoCanvas := self newGtkWidget.

	versionLabel label: self version
]

{ #category : #initialization }
BVGeneratorUI >> initializeWindow: aWindowPresenter [

	aWindowPresenter
		title: self title;
		initialExtent: 960@540;
		windowIcon: self windowIcon
]

{ #category : #api }
BVGeneratorUI >> title [

	^ 'BenjaVision ProLuxe Generator'
]

{ #category : #api }
BVGeneratorUI >> version [
	^ '1.0.1'
]
