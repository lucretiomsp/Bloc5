Class {
	#name : 'B5EllipseModeCenter',
	#superclass : 'B5EllipseMode',
	#category : 'Bloc5-Modes',
	#package : 'Bloc5',
	#tag : 'Modes'
}

{ #category : 'calcul' }
B5EllipseModeCenter >> calculateCornerCoordinates [

	| w h x y  |
	w := self child constraints horizontal resizer size.
	h := self child constraints vertical resizer size.
	x := self child constraints position x.
	y := self child constraints position y.
	cornerCoordinates := x + (w / 2)
	                     @ (y + (h / 2)).
	^ cornerCoordinates
]
