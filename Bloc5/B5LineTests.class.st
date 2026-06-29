Class {
	#name : 'B5LineTests',
	#superclass : 'TestCase',
	#category : 'Bloc5-Tests',
	#package : 'Bloc5',
	#tag : 'Tests'
}

{ #category : 'tests' }
B5LineTests >> testEndPointSetter [
    | line |
    line := B5Line new endPoint: 99 @ 99; yourself.
    self assert: line endPoint equals: 99 @ 99
]

{ #category : 'tests' }
B5LineTests >> testFromToConstructor [
    | line |
    line := B5Line from: 10 @ 20 to: 30 @ 40.
    self assert: line startPoint equals: 10 @ 20.
    self assert: line endPoint equals: 30 @ 40
]

{ #category : 'tests' }
B5LineTests >> testGeometryIsLineGeometry [
    | line |
    line := B5Line new.
    self assert: line geometry class equals: BlLineGeometry
]

{ #category : 'tests' }
B5LineTests >> testStartPointSetter [
    | line |
    line := B5Line new startPoint: 5 @ 5; yourself.
    self assert: line startPoint equals: 5 @ 5
]
