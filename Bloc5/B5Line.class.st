"
Convenience high level abstraction to draw a line a la p5js.
Basic creation:
B5Line from: aPoint to: anotherPoint
creates a black line, 5px border,
"
Class {
	#name : 'B5Line',
	#superclass : 'B5Shape',
	#instVars : [
		'startPoint',
		'endPoint'
	],
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

{ #category : 'accessing' }
B5Line >> endPoint [ 
^ endPoint
]

{ #category : 'initialization' }
B5Line >> endPoint: aPoint [

	endPoint := aPoint.
	self updateGeometry
]

{ #category : 'instance creation' }
B5Line >> from: aStartPoint to: anEndPoint [
    startPoint := aStartPoint.
    endPoint := anEndPoint.
    self updateGeometry
]

{ #category : 'initialization' }
B5Line >> initialize [

	super initialize.
	startPoint := 0 @ 0.
	endPoint := 100 @ 100.
 self geometry: (BlLineGeometry new from: startPoint to: startPoint ); background: Color black
]

{ #category : 'accessing' }
B5Line >> startPoint [ 
^ startPoint 
]

{ #category : 'initialization' }
B5Line >> startPoint: aPoint [
    startPoint := aPoint.
    self updateGeometry
]

{ #category : 'updating' }
B5Line >> updateGeometry [
    self geometry: (BlLineGeometry
        from: startPoint
        to: endPoint)
]
