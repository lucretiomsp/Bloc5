Class {
	#name : 'B5Triangle',
	#superclass : 'B5Shape',
	#category : 'Bloc5-Shapes',
	#package : 'Bloc5',
	#tag : 'Shapes'
}

{ #category : 'initialization' }
B5Triangle >> initialize [

	super initialize.
	self
		geometry: BlTriangleGeometry new;
		extent: 60 @ 20;
		position: B5Space centerCoordinates;
		background: Color black
]
