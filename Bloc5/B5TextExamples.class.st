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
B5TextExamples >> exampleHola [

	<script: 'self new exampleHola'>
	| space tx |
	space := B5Space new.
	tx := B5Text new
		      text: 'Hola Ameeeeeeeeega';
		      fontSize: 49;
		      fill: Color red;
		      stroke: Color green.

	space addChild: tx.

	space show
]
