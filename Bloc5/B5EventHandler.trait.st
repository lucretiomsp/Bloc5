"
I am the Trait for shared event handlers
"
Trait {
	#name : 'B5EventHandler',
	#category : 'Bloc5-Traits',
	#package : 'Bloc5',
	#tag : 'Traits'
}

{ #category : 'event handling' }
B5EventHandler >> onMouseDown: aBlock [
    self
        addEventHandlerOn: BlMouseDownEvent
        do: [ :evt |
            aBlock
                value: evt position x
                value: evt position y ]
]
