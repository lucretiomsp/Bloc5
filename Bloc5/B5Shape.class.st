"
Super class for all high level classe with shapes a la p5js
"
Class {
	#name : 'B5Shape',
	#superclass : 'BlElement',
	#category : 'Bloc5-Shapes',
	#package : 'Bloc5',
	#tag : 'Shapes'
}

{ #category : 'fixture' }
B5Shape >> fill: aColor [

self background: aColor.
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
