Class {
	#name : #SHCard,
	#superclass : #Object,
	#instVars : [
		'player',
		'game',
		'name',
		'type',
		'effects'
	],
	#category : #ShadowHunter
}

{ #category : #temp }
SHCard >> discard [
]

{ #category : #temp }
SHCard >> draw [
]

{ #category : #accessing }
SHCard >> effects [ 
	^ effects 
]

{ #category : #accessing }
SHCard >> effects: anOrderedCollection [

	effects := anOrderedCollection 
]

{ #category : #accessing }
SHCard >> game [ 
	^ game
]

{ #category : #accessing }
SHCard >> game: aSHGame [

	game := aSHGame 
]

{ #category : #accessing }
SHCard >> name [ 
	^ name
]

{ #category : #accessing }
SHCard >> name: aString [

	name := aString 
]

{ #category : #temp }
SHCard >> playCard [
]

{ #category : #accessing }
SHCard >> player [ 
	^ player
]

{ #category : #accessing }
SHCard >> player: aSHPlayer [

	player := aSHPlayer 
]

{ #category : #temp }
SHCard >> reveal [
]

{ #category : #accessing }
SHCard >> type [ 
	^ type
]

{ #category : #accessing }
SHCard >> type: aSHType [

	type := aSHType 
]
