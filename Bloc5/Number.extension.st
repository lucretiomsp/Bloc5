Extension { #name : 'Number' }

{ #category : '*Bloc5' }
Number >> map: anArray [
    | low1 high1 low2 high2 result lo hi |
    low1 := anArray first.
    high1 := anArray second.
    low2 := anArray third.
    high2 := anArray fourth.
    result := low2 + (((self - low1) / (high1 - low1)) * (high2 - low2)).
    lo := low2 min: high2.
    hi := low2 max: high2.
    ^ (result max: lo) min: hi
]
