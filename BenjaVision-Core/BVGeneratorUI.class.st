Class {
	#name : #BVGeneratorUI,
	#superclass : #SpPresenter,
	#instVars : [
		'menu',
		'text'
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

{ #category : #api }
BVGeneratorUI >> title [

	^ 'BenjaVision ProLuxe Generator'
]
