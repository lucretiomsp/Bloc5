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
	v1 := 300@300.
	v2 := 400@100.
	v3 := 500@300.
	self geometry: (BlPolygonGeometry vertices: {
				 self v1.
				 self v2.
				 self v3 }).
	self background: (Color pink alpha: 0.2).
	self border: (BlBorder paint: Color black width: 1)
]

{ #category : 'drawing' }
B5Triangle >> redrawVertices [ 
self geometry: (BlPolygonGeometry vertices: {
				 self v1.
				 self v2.
				 self v3 }).
]

{ #category : 'accessing' }
B5Triangle >> v1 [ 
^ v1
]

{ #category : 'accessing' }
B5Triangle >> v1: aVertex [

	v1 := aVertex.
	self redrawVertices 
]

{ #category : 'accessing' }
B5Triangle >> v2 [

	^ v2
]

{ #category : 'accessing' }
B5Triangle >> v2: aVertex [

	v2 := aVertex.
	self redrawVertices 
]

{ #category : 'accessing' }
B5Triangle >> v3 [

	^ v3
]

{ #category : 'accessing' }
B5Triangle >> v3: aVertex [

	v3 := aVertex.
	self redrawVertices
]
