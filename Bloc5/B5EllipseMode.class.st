"
Abstract superclass to implement how ellipses, circles and arcs are drawn
"
Class {
	#name : 'B5EllipseMode',
	#superclass : 'Object',
	#instVars : [
		'child',
		'cornerCoordinates'
	],
	#category : 'Bloc5-Modes',
	#package : 'Bloc5',
	#tag : 'Modes'
}

{ #category : 'calcul' }
B5EllipseMode >> calculateCornerCoordinates [

self subclassResponsibility 
]

{ #category : 'calcul' }
B5EllipseMode >> child [ 

^ child
]

{ #category : 'calcul' }
B5EllipseMode >> child: aB5CircularShape [

child := aB5CircularShape 
]
