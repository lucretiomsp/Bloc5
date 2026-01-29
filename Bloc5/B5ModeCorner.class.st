"
Uses the position coordinates as the upper-left corner of the shape.
"
Class {
	#name : 'B5ModeCorner',
	#superclass : 'B5Mode',
	#category : 'Bloc5-Modes',
	#package : 'Bloc5',
	#tag : 'Modes'
}

{ #category : 'calcul' }
B5ModeCorner >> calculateCornerCoordinates [

	| x y |
	x := self child constraints position x.
	y := self child constraints position y.
	1halt.
	cornerCoordinates := x @ y.
	^ cornerCoordinates
]
