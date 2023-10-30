Class {
	#name : #SHGame,
	#superclass : #Object,
	#instVars : [
		'players',
		'places',
		'winnerTeam',
		'darkPile',
		'darkDiscardPile',
		'lightPile',
		'lightDiscardPile',
		'visionPile',
		'visionDiscardPile'
	],
	#category : #ShadowHunter
}

{ #category : #temp }
SHGame >> addPlayer [
]

{ #category : #'as yet unclassified' }
SHGame >> addPlayer: aPlayer [

	self players length < 4 ifFalse: [ ^self ].
		self players add: aPlayer.
		aPlayer game: self
]

{ #category : #accessing }
SHGame >> darkDiscardPile [

	^ darkDiscardPile 
]

{ #category : #accessing }
SHGame >> darkDiscardPile: anOrderedCollection [

	darkDiscardPile  := anOrderedCollection
]

{ #category : #accessing }
SHGame >> darkPile [ 
	^ darkPile 
]

{ #category : #accessing }
SHGame >> darkPile: anOrderedCollection [

	darkPile := anOrderedCollection 
]

{ #category : #temp }
SHGame >> deadTeam [
]

{ #category : #temp }
SHGame >> drawInPile [
]

{ #category : #temp }
SHGame >> drawType [
]

{ #category : #initialization }
SHGame >> initialize [ 
	super initialize 
]

{ #category : #accessing }
SHGame >> lightDiscardPile [

	^ lightDiscardPile 
]

{ #category : #accessing }
SHGame >> lightDiscardPile: anOrderedCollection [

	lightDiscardPile := anOrderedCollection
]

{ #category : #accessing }
SHGame >> lightPile [

	^ lightPile
]

{ #category : #accessing }
SHGame >> lightPile: anOrderedCollection [

	lightPile := anOrderedCollection
]

{ #category : #accessing }
SHGame >> places [ 
	^ places
]

{ #category : #temp }
SHGame >> play [
]

{ #category : #accessing }
SHGame >> players [ 
	^ players
]

{ #category : #accessing }
SHGame >> players: anOrderedCollection [

	players := anOrderedCollection 
]

{ #category : #temp }
SHGame >> refill [
]

{ #category : #temp }
SHGame >> setPiles [
]

{ #category : #temp }
SHGame >> setPlaces [
]

{ #category : #temp }
SHGame >> setPlayers [
]

{ #category : #temp }
SHGame >> setPlayersOnPlaces [
]

{ #category : #accessing }
SHGame >> visionDiscardPile [

	^ visionDiscardPile
]

{ #category : #accessing }
SHGame >> visionDiscardPile: anOrderedCollection [

	visionDiscardPile := anOrderedCollection
]

{ #category : #accessing }
SHGame >> visionPile [

	^ visionPile
]

{ #category : #accessing }
SHGame >> visionPile: anOrderedCollection [

	visionPile := anOrderedCollection
]

{ #category : #accessing }
SHGame >> winnerTeam [ 
	^ winnerTeam 
]

{ #category : #accessing }
SHGame >> winnerTeam: aTeam [

	winnerTeam := aTeam 
]
