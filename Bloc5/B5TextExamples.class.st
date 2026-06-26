"
Set of text examples
"
Class {
	#name : 'B5TextExamples',
	#superclass : 'Object',
	#category : 'Bloc5-Examples',
	#package : 'Bloc5',
	#tag : 'Examples'
}

{ #category : 'examples' }
B5TextExamples >> exampleHi [
	"The text 'hi', nice and big."

	<script: 'self new exampleHi openInSpace'>
	^ B5Text string: 'Hola Amigaaaaaaaaaaaaaaaaaaa !' at: 90 @ 90
	"textSize: 120;
		  yourself"
]
