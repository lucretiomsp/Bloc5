"
Convenience high level abstraction to draw a Circle a la p5js.
Basic creation:
NCCircle new
creates a black Circle, 10px diameter positioned at the center of an NcSpace
"
Class {
	#name : 'B5Circle',
	#superclass : 'B5Shape',
	#instVars : [
		'diameter'
	],
	#category : 'Bloc5-Shapes',
	#package : 'Bloc5',
	#tag : 'Shapes'
}

{ #category : 'accessing' }
B5Circle >> diameter [

	^ diameter
]

{ #category : 'accessing' }
B5Circle >> diameter: anInteger [ 
   
   self extent: anInteger@anInteger.
	diameter := anInteger
]

{ #category : 'initialization' }
B5Circle >> initialize [

	super initialize.
	self
		geometry: BlCircleGeometry new;
		extent: 10 @ 10;
		background: Color black;
		extent: B5Space centerCoordinates
]
