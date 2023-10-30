Class {
	#name : #SHPlayer,
	#superclass : #Object,
	#instVars : [
		'game',
		'name',
		'character',
		'wounds',
		'stuff',
		'alive',
		'place'
	],
	#category : #ShadowHunter
}

{ #category : #accessing }
SHPlayer >> alive: aBoolean [

	alive := aBoolean 
]

{ #category : #accessing }
SHPlayer >> character [ 
	^ character 
]

{ #category : #accessing }
SHPlayer >> character: aCharacter [

	character := aCharacter 
]

{ #category : #temp }
SHPlayer >> checkDeath [
]

{ #category : #temp }
SHPlayer >> choiceAttack [
]

{ #category : #temp }
SHPlayer >> drawCard [
]

{ #category : #accessing }
SHPlayer >> game [ 
	^ game
]

{ #category : #accessing }
SHPlayer >> game: aSHGame [

	game := aSHGame 
]

{ #category : #temp }
SHPlayer >> goTo [
]

{ #category : #initialization }
SHPlayer >> initialize [

	super initialize.
	self wounds: 0.
	self alive: true
]

{ #category : #accessing }
SHPlayer >> isAlive [

	^ alive 
]

{ #category : #temp }
SHPlayer >> move [
]

{ #category : #accessing }
SHPlayer >> name [ 
	^ name
]

{ #category : #accessing }
SHPlayer >> name: aString [

	name := aString 
]

{ #category : #temp }
SHPlayer >> onDeath [
]

{ #category : #accessing }
SHPlayer >> place [ 
	^ place
]

{ #category : #accessing }
SHPlayer >> place: aSHPlace [

	place := aSHPlace 
]

{ #category : #temp }
SHPlayer >> placeEffect [
]

{ #category : #temp }
SHPlayer >> playPlace [
]

{ #category : #temp }
SHPlayer >> playTurn [
]

{ #category : #temp }
SHPlayer >> reveal [ 
]

{ #category : #accessing }
SHPlayer >> stuff [ 
	^ stuff
]

{ #category : #accessing }
SHPlayer >> stuff: anOrderedCollection [

	stuff := anOrderedCollection 
]

{ #category : #accessing }
SHPlayer >> wounds [ 
	^ wounds 
]

{ #category : #accessing }
SHPlayer >> wounds: aNumber [

	wounds := aNumber 
]
