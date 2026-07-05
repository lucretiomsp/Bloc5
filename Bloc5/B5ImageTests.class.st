Class {
	#name : 'B5ImageTests',
	#superclass : 'TestCase',
	#category : 'Bloc5-Tests',
	#package : 'Bloc5',
	#tag : 'Tests'
}

{ #category : 'tests' }
B5ImageTests >> testFromFile [

	| space img |
	space := B5Space new.
	img := B5Image fromFilePath:
		       '/Users/domenicocipriani/MyStuff/coding/chucK/chuGL/assets/ChuckCat.png'.
	space root addChild: img.
   space pulse.          "run one cycle synchronously"

	self assert: img extent equals: 1000 @ 1000
]
