Class {
	#name : 'B5LineTest',
	#superclass : 'TestCase',
	#category : 'Bloc5-Tests',
	#package : 'Bloc5',
	#tag : 'Tests'
}

{ #category : 'accessing' }
B5LineTest >> testDefaultValues [
    | line |
    line := B5Line new.
    self assert: line startPoint equals: 0 @ 0.
    self assert: line endPoint equals: 100 @ 100
]

{ #category : 'tests' }
B5LineTest >> testEndPointSetter [
    | line |
    line := B5Line new endPoint: 99 @ 99; yourself.
    self assert: line endPoint equals: 99 @ 99
]

{ #category : 'tests' }
B5LineTest >> testFromToConstructor [
    | line |
    line := B5Line from: 10 @ 20 to: 30 @ 40.
    self assert: line startPoint equals: 10 @ 20.
    self assert: line endPoint equals: 30 @ 40
]

{ #category : 'tests' }
B5LineTest >> testFromToUpdatesBothPoints [
    | line |
    line := B5Line new.
    line from: 1 @ 2 to: 3 @ 4.
    self assert: line startPoint equals: 1 @ 2.
    self assert: line endPoint equals: 3 @ 4
]

{ #category : 'tests' }
B5LineTest >> testGeometryIsLineGeometry [
    | line |
    line := B5Line new.
    self assert: line geometry class equals: BlLineGeometry
]

{ #category : 'tests' }
B5LineTest >> testStartPointSetter [
    | line |
    line := B5Line new startPoint: 5 @ 5; yourself.
    self assert: line startPoint equals: 5 @ 5
]
