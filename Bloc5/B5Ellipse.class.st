"
Convenience high level abstraction to draw an Ellipse a la p5js.

B5Ellipse new
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
	"By default, the position of the ellipse is the shape's center"

	super initialize.
	self
		geometry: BlEllipseGeometry new;
		background: Color black;
		position: B5Space centerCoordinates;
		extent: 20 @ 10.
]
