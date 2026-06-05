"
Convenience high level abstraction to draw a quadrilateral a la p5js.
Four vertices can be set independently; points should be in clockwise or counter-clockwise order.

"
Class {
	#name : 'B5Quad',
	#superclass : 'B5Shape',
	#instVars : [
		'v1',
		'v2',
		'v3',
		'v4'
	],
	#category : 'Bloc5-Shapes',
	#package : 'Bloc5',
	#tag : 'Shapes'
}

{ #category : 'initialization' }
B5Quad >> initialize [
    super initialize.
    v1 := 50 @ 0.
    v2 := 150 @ 0.
    v3 := 150 @ 100.
    v4 := 50 @ 100.
    self updateGeometry.
    self background: Color black
]

{ #category : 'change reporting' }
B5Quad >> updateGeometry [
    self geometry: (BlPolygonGeometry vertices: { v1. v2. v3. v4 })
]

{ #category : 'accessing' }
B5Quad >> v1: aPoint [  
v1 := aPoint. self updateGeometry
]

{ #category : 'accessing' }
B5Quad >> v2: aPoint [  
v2 := aPoint. self updateGeometry
]

{ #category : 'accessing' }
B5Quad >> v3: aPoint [  
v3 := aPoint. self updateGeometry
]

{ #category : 'accessing' }
B5Quad >> v4: aPoint [  
v4 := aPoint. self updateGeometry
]

{ #category : 'instance creation' }
B5Quad >> vertices: anArray [
    v1 := anArray first.
    v2 := anArray second.
    v3 := anArray third.
    v4 := anArray fourth.
    self updateGeometry
]
