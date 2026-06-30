Class {
	#name : 'B5ExtensionsTests',
	#superclass : 'TestCase',
	#category : 'Bloc5-Tests',
	#package : 'Bloc5',
	#tag : 'Tests'
}

{ #category : 'tests' }
B5ExtensionsTests >> testMapNumber [

	self assert: (2 map: #( 0 10 0 100 )) equals: 20.
	"high clamping"
    self assert: (11 map: #(0 10 0 100)) equals: 100.
"low clamping"
    self assert: (-5 map: #(0 10 0 100)) equals: 0
]

{ #category : 'tests' }
B5ExtensionsTests >> testNormNumber [

	self assert: (2 norm: #(0 10)) equals: 0.2.

	self assert: (0 norm: #(0 10)) equals: 0.
	self assert: (10 norm: #(0 10)) equals: 1.

	self assert: (15 norm: #(0 10)) equals: 1.5.
	self assert: (-5 norm: #(0 10)) equals: -0.5.

	self assert: (0 norm: #(-10 10)) equals: 0.5
]
