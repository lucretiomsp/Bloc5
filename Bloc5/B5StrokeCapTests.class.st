Class {
	#name : 'B5StrokeCapTests',
	#superclass : 'TestCase',
	#category : 'Bloc5-Tests',
	#package : 'Bloc5',
	#tag : 'Tests'
}

{ #category : 'tests' }
B5StrokeCapTests >> testDefaultCapIsRound [

	self assert: (B5Line from: 0 @ 0 to: 100 @ 0) capStyle equals: #square
]
