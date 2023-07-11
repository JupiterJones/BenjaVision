Class {
	#name : #BVApplication,
	#superclass : #SpApplication,
	#category : #'BenjaVision-Core'
}

{ #category : #initialization }
BVApplication >> initialize [ 
	super initialize.
	self useBackend: #Gtk
]
