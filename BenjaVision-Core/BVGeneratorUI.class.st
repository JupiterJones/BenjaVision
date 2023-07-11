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

{ #category : #launch }
BVGeneratorUI class >> launch [

	<sampleInstance>
	^ self instance open
]

{ #category : #layout }
BVGeneratorUI >> defaultLayout [

	^ SpBoxLayout newTopToBottom
		add: menu expand: false;
		add: text;
		yourself
]

{ #category : #accessing }
BVGeneratorUI >> menu [

	^ menu
]

{ #category : #accessing }
BVGeneratorUI >> text [

	^ text
]

{ #category : #api }
BVGeneratorUI >> title [

	^ 'BenjaVision ProLuxe Generator'
]
