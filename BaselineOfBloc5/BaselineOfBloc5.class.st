"
Baseline of Bloc5
"
Class {
	#name : 'BaselineOfBloc5',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfBloc5',
	#package : 'BaselineOfBloc5'
}

{ #category : 'baselines' }
BaselineOfBloc5 >> baseline: spec [
	<baseline>
	spec for: #common do: [
		spec
			baseline: 'Bloc'
			with: [ spec repository: 'github://pharo-graphics/Bloc:master/src' ].
		spec
			package: 'Bloc5'
			with: [ spec requires: #('Bloc') ].
		spec group: 'default' with: #('Bloc5') ]
]
