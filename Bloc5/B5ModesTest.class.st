Class {
	#name : 'B5ModesTest',
	#superclass : 'TestCase',
	#category : 'Bloc5-Tests',
	#package : 'Bloc5',
	#tag : 'Tests'
}

{ #category : 'tests' }
B5ModesTest >> testCalculateCornerCoordinates [

	| ellipse |
	ellipse := B5Ellipse new
		           position: 100 @ 100;
		           extent: 80 @ 60.
	ellipse mode: #center .
	self assert: ellipse calculateCornerCoordinates equals: 140 @ 130
]
