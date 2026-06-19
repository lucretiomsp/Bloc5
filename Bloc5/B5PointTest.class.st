Class {
	#name : 'B5PointTest',
	#superclass : 'TestCase',
	#category : 'Bloc5-Tests',
	#package : 'Bloc5',
	#tag : 'Tests'
}

{ #category : 'accessing' }
B5PointTest >> testDefaultValues [

	| point |
	point := B5Point new.
	self assert: point position equals: 0 @ 0.
	self assert: point pointSize equals: 1
]

{ #category : 'tests' }
B5PointTest >> testGeometryIsCircleGeometry [
    | point |
    point := B5Point new.
    self assert: point geometry class equals: BlCircleGeometry
]

{ #category : 'tests' }
B5PointTest >> testPointSizeSetter [
    | point |
    point := B5Point new pointSize: 4; yourself.
    self assert: point pointSize equals: 4
]
