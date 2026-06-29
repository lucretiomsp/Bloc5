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
