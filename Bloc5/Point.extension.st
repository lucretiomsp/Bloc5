Extension { #name : 'Point' }

{ #category : '*Bloc5' }
Point >> isHitAt: aClickPosition [

self isHitAt: aClickPosition tolerance: 5
]

{ #category : '*Bloc5' }
Point >> isHitAt: aClickPosition tolerance: aNumber [
    | delta |
    delta := aClickPosition - self.
    ^ (delta dotProduct: delta) <= (aNumber * aNumber)
]
