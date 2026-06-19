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
			package: 'Bloc5'.
		spec group: 'default' with: #( 'Bloc5' ) ]
]
