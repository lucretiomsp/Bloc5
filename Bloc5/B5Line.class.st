"
Convenience high level abstraction to draw a line a la p5js.
Basic creation:
B5Line from: aPoint to: anotherPoint
creates a black line, 5px border,
"
Class {
	#name : 'B5Line',
	#superclass : 'B5Shape',
	#category : 'Bloc5-Shapes',
	#package : 'Bloc5',
	#tag : 'Shapes'
}

{ #category : 'instance creation' }
B5Line class >> from: aStartPoint to: anEndPoint [

	| line |
	line := self new
		        extent: B5Space extent;
		        border: (BlBorder paint: Color black width: 5);
		        geometry:
			        (BlLineGeometry new from: aStartPoint to: anEndPoint).


	^ line
]

{ #category : 'instance creation' }
B5Line >> from: aStartPoint to: anEndPoint [
	"change the startPoint and endPoint of the line"

	self geometry:  (self geometry from: aStartPoint to: anEndPoint)
]
