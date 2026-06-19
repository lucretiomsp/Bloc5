"
""A single rendered dot at position, a la p5js point(x,y).
pointSize controls the diameter (default 1).""
"
Class {
	#name : 'B5Point',
	#superclass : 'B5Shape',
	#instVars : [
		'position',
		'pointSize'
	],
	#category : 'Bloc5-Shapes',
	#package : 'Bloc5',
	#tag : 'Shapes'
}

{ #category : 'initialization' }
B5Point >> initialize [

	super initialize.
	position := 0 @ 0.
	pointSize := 1.
	self
		position: position;
		extent: pointSize@pointSize ;
		geometry: BlCircleGeometry new;
		background: Color black;
		position: B5Space centerCoordinates
]

{ #category : 'accessing' }
B5Point >> pointSize [ 

^ pointSize
]

{ #category : 'accessing' }
B5Point >> pointSize: aNumber [

self extent: aNumber@aNumber .
pointSize := aNumber 
	
]
