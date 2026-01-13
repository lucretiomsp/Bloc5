"
A BlSpace used to display the examples
"
Class {
	#name : 'B5Space',
	#superclass : 'BlSpace',
	#instVars : [
		'frameRate'
	],
	#category : 'Bloc5-Space',
	#package : 'Bloc5',
	#tag : 'Space'
}

{ #category : 'accessing' }
B5Space class >> centerCoordinates [

	^ self  extent / 2
]

{ #category : 'accessing' }
B5Space class >> extent [
	"fixed extent"

	^ 600 @ 600
]

{ #category : 'adding' }
B5Space >> addChild: aBlEelement [

"convenience method"

self root addChild: aBlEelement
]

{ #category : 'accessing' }
B5Space >> centerCoordinates [

	^ self class centerCoordinates
]

{ #category : 'animation' }
B5Space >> drawAnimation: aBlock [

	| task |
	task := BlRepeatedTaskAction new
		        delay: (1000 / frameRate) milliSeconds ;
		        action: aBlock;
		        yourself.
	self enqueueTask: task
]

{ #category : 'accessing' }
B5Space >> frameRate [

	^ frameRate
]

{ #category : 'accessing' }
B5Space >> frameRate: anObject [

	frameRate := anObject
]

{ #category : 'initialization' }
B5Space >> initialize [

	super initialize.
	self extent: self class extent.
	self frameRate: 60.
	self root background: Color white
]
