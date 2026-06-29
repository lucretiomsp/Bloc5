Class {
	#name : 'B5EventTests',
	#superclass : 'TestCase',
	#category : 'Bloc5-Tests',
	#package : 'Bloc5',
	#tag : 'Tests'
}

{ #category : 'tests' }
B5EventTests >> testOnMouseDraggedFires [
    | dot fired |
    fired := false.
    dot := B5Circle new diameter: 40.
    dot onMouseDragged: [ :evt | fired := true ].
    dot dispatchEvent: (BlDragEvent new position: 50@50).
    self assert: fired
]
