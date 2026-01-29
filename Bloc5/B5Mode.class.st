"
Abstract superclass to implement how ellipses, circles and arcs are drawn
"
Class {
	#name : 'B5Mode',
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
B5Mode >> calculateCornerCoordinates [

self subclassResponsibility 
]

{ #category : 'calcul' }
B5Mode >> child [ 

^ child
]

{ #category : 'calcul' }
B5Mode >> child: aB5CircularShape [

child := aB5CircularShape 
]
