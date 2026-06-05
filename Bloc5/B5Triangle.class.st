"
Convenience high level abstraction to draw a Triangle.

"
Class {
	#name : 'B5Triangle',
	#superclass : 'B5Shape',
	#instVars : [
		'v1',
		'v2',
		'v3'
	],
	#category : 'Bloc5-Shapes',
	#package : 'Bloc5',
	#tag : 'Shapes'
}

{ #category : 'initialization' }
B5Triangle >> initialize [

	super initialize.
	v1 := 100 @ 90.
	v2 := 400 @ 90.
	v3 := 250 @ 400.
	self
		geometry: (BlPolygonGeometry vertices: {
						 self v1.
						 self v2.
						 self v3 });
		background: Color red;
		strokeColor: Color black;
		strokeWidth: 10
]

{ #category : 'as yet unclassified' }
B5Triangle >> updateVertices [

self
		geometry: (BlPolygonGeometry vertices: {
						 self v1.
						 self v2.
						 self v3 })
]

{ #category : 'accessing' }
B5Triangle >> v1 [

	^ v1
]

{ #category : 'accessing' }
B5Triangle >> v1: aVertex [

 v1 := aVertex.
    self geometry: (BlPolygonGeometry vertices: { v1. v2. v3 })

]

{ #category : 'accessing' }
B5Triangle >> v2 [

	^ v2
]

{ #category : 'accessing' }
B5Triangle >> v2: aVertex [

	v2 := aVertex.
	self geometry: (BlPolygonGeometry vertices: { v1. v2. v3 })
]

{ #category : 'accessing' }
B5Triangle >> v3 [

	^ v3
]

{ #category : 'accessing' }
B5Triangle >> v3: aVertex [

	v3 := aVertex.
	self geometry: (BlPolygonGeometry vertices: { v1. v2. v3 })
]
