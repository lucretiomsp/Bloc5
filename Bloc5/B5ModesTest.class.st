Class {
	#name : 'B5ModesTest',
	#superclass : 'TestCase',
	#category : 'Bloc5-Tests',
	#package : 'Bloc5',
	#tag : 'Tests'
}

{ #category : 'tests' }
B5ModesTest >> testCalculateCornerCoordinatesForCenter [

	| ellipse |
	ellipse := B5Circle new mode: #center.
	ellipse
		diameter: 50.



	self assert: (ellipse mode calculateCornerCoordinatesFor: 200@100) equals: 175 @ 75
]

{ #category : 'tests' }
B5ModesTest >> testCalculateCornerCoordinatesForCornerMode [

	| mode |
	mode := B5ModeCorner new.


	self
		assert: (mode calculateCornerCoordinatesFor: 100 @ 100)
		equals: 100 @ 100
]
