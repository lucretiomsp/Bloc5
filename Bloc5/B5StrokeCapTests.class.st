Class {
	#name : 'B5StrokeCapTests',
	#superclass : 'TestCase',
	#category : 'Bloc5-Tests',
	#package : 'Bloc5',
	#tag : 'Tests'
}

{ #category : 'tests' }
B5StrokeCapTests >> testBlCapSelectorMapping [
    | line | line := B5Line from: 0@0 to: 100@0.
    line strokeCap: #round.   self assert: line blCapSelector equals: #capRound.
    line strokeCap: #square.  self assert: line blCapSelector equals: #capButt.
    line strokeCap: #project. self assert: line blCapSelector equals: #capSquare.

]

{ #category : 'tests' }
B5StrokeCapTests >> testDefaultCapIsRound [

	self assert: (B5Line from: 0 @ 0 to: 100 @ 0) capStyle equals: #square
]

{ #category : 'tests' }
B5StrokeCapTests >> testOutskirtsIsCenteredAfterCapSet [
    "regression: caps silently ignored unless outskirts is explicit"
    | line | line := B5Line from: 0@0 to: 100@0.
    line strokeCap: #round.
    self assert: line outskirts equals: BlOutskirts centered.
]

{ #category : 'tests' }
B5StrokeCapTests >> testStrokeCapSetsCapStyle [
    | line | line := B5Line from: 0@0 to: 100@0.
    line strokeCap: #square.
    self assert: line capStyle equals: #square.
]
