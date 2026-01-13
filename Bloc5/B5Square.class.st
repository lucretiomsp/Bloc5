"
Convenience high level abstraction to draw a Square a la p5js.
Basic creation:
B5Square new
creates a black Retangle, 160x20 rectangle positioned at the center of an NcSpace
"
Class {
	#name : 'B5Square',
	#superclass : 'B5Shape',
	#category : 'Bloc5-Shapes',
	#package : 'Bloc5',
	#tag : 'Shapes'
}

{ #category : 'initialization' }
B5Square >> initialize [

	super initialize.
	self
		geometry: BlRectangleGeometry new;
		extent: 50 @ 50;
		position: B5Space centerCoordinates;
		background: Color black
]
