"
Convenience high level abstraction to draw an Ellipse a la p5js.

NcEllopse new
creates a black Circle, 10@20 extent , positioned at the center of an NcSpace
"
Class {
	#name : 'B5Ellipse',
	#superclass : 'B5Shape',
	#category : 'Bloc5-Shapes',
	#package : 'Bloc5',
	#tag : 'Shapes'
}

{ #category : 'initialization' }
B5Ellipse >> initialize [

	super initialize.
	self
		geometry: BlCircleGeometry new;
		background: Color black;
		position: B5Space centerCoordinates;
		extent: 20 @ 10
]
