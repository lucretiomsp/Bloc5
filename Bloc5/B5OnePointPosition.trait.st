"
A trait which allow to change just the X or Y position
"
Trait {
	#name : 'B5OnePointPosition',
	#category : 'Bloc5-Traits',
	#package : 'Bloc5',
	#tag : 'Traits'
}

{ #category : 'positioning' }
B5OnePointPosition >> positionX: anInteger [

self position: anInteger @ self position y
]

{ #category : 'positioning' }
B5OnePointPosition >> positionY: anInteger [

	self position: self position x @ anInteger 
]
