"
Abstract superclass to implement how ellipses, circles and arcs are drawn
"
Class {
	#name : 'B5EllipseMode',
	#superclass : 'Object',
	#instVars : [
		'child',
		'centerCoordinates'
	],
	#category : 'Bloc5-Modes',
	#package : 'Bloc5',
	#tag : 'Modes'
}

{ #category : 'calcul' }
B5EllipseMode >> calulateCenterCoordinates [

| w h |
w := self child constraints horizontal.
h := self child constraints vertical .
	centerCoordinates := self child position x + w
	                     @ (self child position y + h)
]

{ #category : 'calcul' }
B5EllipseMode >> child [ 

^ child
]

{ #category : 'calcul' }
B5EllipseMode >> child: aB5CircularShape [

child := aB5CircularShape 
]
