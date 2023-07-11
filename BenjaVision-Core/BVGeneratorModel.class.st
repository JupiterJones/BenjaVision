Class {
	#name : #BVGeneratorModel,
	#superclass : #Object,
	#instVars : [
		'generators'
	],
	#category : #'BenjaVision-Core'
}

{ #category : #accessing }
BVGeneratorModel >> generators [

	^ generators ifNil: [ generators := OrderedCollection new ]
]
