"
Convenience high level abstraction to draw a Rectangle a la p5js.
Basic creation:
NCRect new
creates a black Retangle, 160x20 rectangle positioned at the center of an NcSpace
"
Class {
	#name : 'B5Rect',
	#superclass : 'B5Shape',
	#category : 'Bloc5',
	#package : 'Bloc5'
}

{ #category : 'initialization' }
B5Rect >> initialize [

	super initialize.
	self
		geometry: BlRectangleGeometry new;
		extent: 60 @ 20;
		position: B5Space centerCoordinates;
		background: Color black
]
