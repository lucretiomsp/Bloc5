"
""A single rendered dot at position, a la p5js point(x,y).
pointSize controls the diameter (default 1).""
"
Class {
	#name : 'B5Point',
	#superclass : 'B5Shape',
	#instVars : [
		'position',
		'pointSize'
	],
	#category : 'Bloc5-Shapes',
	#package : 'Bloc5',
	#tag : 'Shapes'
}

{ #category : 'accessing' }
B5Point >> at: aPoint [
    position := aPoint.
    self updateGeometry
]

{ #category : 'initialization' }
B5Point >> initialize [
    super initialize.
    position := 0 @ 0.
    pointSize := 1.
    self updateGeometry
]

{ #category : 'accessing' }
B5Point >> pointSize [ 

^ pointSize
]

{ #category : 'accessing' }
B5Point >> pointSize: aNumber [
    pointSize := aNumber.
    self updateGeometry
]

{ #category : 'accessing' }
B5Point >> position [   
^ position
]

{ #category : 'updating' }
B5Point >> updateGeometry [
    self geometry: (BlCircleGeometry new
        matchExtent: pointSize @ pointSize).
    self position: position
]
