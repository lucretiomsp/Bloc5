"
I correspond to p5js **line**
"
Class {
	#name : 'B5Line',
	#superclass : 'B5OpenShape',
	#instVars : [
		'startPoint',
		'endPoint'
	],
	#category : 'Bloc5-Shapes',
	#package : 'Bloc5',
	#tag : 'Shapes'
}

{ #category : 'instance creation' }
B5Line class >> from: aPoint to: aPoint2 [

	^ self new
		startPoint: aPoint;
		endPoint: aPoint2
]

{ #category : 'accessing' }
B5Line >> endPoint [
	^ endPoint
]

{ #category : 'accessing' }
B5Line >> endPoint: aPoint [

	endPoint := aPoint.
	self refreshGeometry.
	Object inform: 'CHanged end point'
]

{ #category : 'accessing' }
B5Line >> from: aPoint to: anotherPoint [

self startPoint:  aPoint ; endPoint: anotherPoint .
]

{ #category : 'initialization' }
B5Line >> initialize [

	super initialize.
	stroke := Color orange.
	strokeWeight := 6.
	startPoint := 100@100.
	endPoint := 300@300.
	self
		geometry: (BlLineGeometry from: 10 @ 10 to: 200 @ 100);
		border: (BlBorder paint: Color orange width: 6)
]

{ #category : 'private' }
B5Line >> refreshGeometry [
    self geometry: (BlLineGeometry from: startPoint to: endPoint).
    self buildOpenPathBorder
]

{ #category : 'accessing' }
B5Line >> startPoint [
	^ startPoint
]

{ #category : 'accessing' }
B5Line >> startPoint: aPoint [

	startPoint := aPoint.
	self refreshGeometry
]

{ #category : 'accessing' }
B5Line >> stroke: aColor [
    stroke := aColor.
    self buildOpenPathBorder
]

{ #category : 'accessing' }
B5Line >> strokeWeight: anInteger [
    strokeWeight := anInteger.
    self buildOpenPathBorder
]
