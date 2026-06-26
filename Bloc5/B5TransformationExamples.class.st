"
Examples for transformations
"
Class {
	#name : 'B5TransformationExamples',
	#superclass : 'Object',
	#category : 'Bloc5-Examples',
	#package : 'Bloc5',
	#tag : 'Examples'
}

{ #category : 'examples' }
B5TransformationExamples >> exampleTranslate [
    <script: 'self new exampleTranslate'>
    | space shape |
    space := B5Space new.
    shape := B5Square new extent: 50@50; background: Color blue.
    shape translate: 100@100.
    space root addChild: shape.
    space show
]
