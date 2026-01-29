"
Super class for all high level classe with shapes a la p5js
"
Class {
	#name : 'B5Shape',
	#superclass : 'BlElement',
	#instVars : [
		'mode'
	],
	#classVars : [
		'ModesDictionary'
	],
	#category : 'Bloc5-Shapes',
	#package : 'Bloc5',
	#tag : 'Shapes'
}

{ #category : 'class initialization' }
B5Shape class >> initialize [

	ModesDictionary := Dictionary new.
	ModesDictionary at: #center put: B5ModeCenter.
	ModesDictionary at: #corner put: B5ModeCorner
]

{ #category : 'calcul' }
B5Shape >> calculateCornerCoordinates [

	^ self mode calculateCornerCoordinates
]

{ #category : 'initialization' }
B5Shape >> initialize [ 


super initialize.

self mode: #center
]

{ #category : 'accessing' }
B5Shape >> mode [
	^ mode
]

{ #category : 'accessing' }
B5Shape >> mode: aSymbol [

	mode := (self modesDictionary at: aSymbol) new child: self
]

{ #category : 'accessing' }
B5Shape >> modesDictionary [

	^ ModesDictionary
]

{ #category : 'api - bounds' }
B5Shape >> position: aPoint [

super position: self mode calculateCornerCoordinates 
]

{ #category : 'accessing' }
B5Shape >> strokeColor: aColor [
	"change the width of the line"

	| borderWidth |
	borderWidth := self border width.
	self border: (BlBorder paint: aColor width: borderWidth)
]

{ #category : 'accessing' }
B5Shape >> strokeWidth: anInteger [
"change the width of the line"
| color |
color := self border paint.
self border: (BlBorder paint: color width: anInteger ).
]
