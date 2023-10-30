Class {
	#name : #SHCharacterCard,
	#superclass : #SHCard,
	#instVars : [
		'team',
		'health',
		'revealed'
	],
	#category : #ShadowHunter
}

{ #category : #temp }
SHCharacterCard >> ability [
]

{ #category : #temp }
SHCharacterCard >> attacking [
]

{ #category : #temp }
SHCharacterCard >> defending [
]

{ #category : #accessing }
SHCharacterCard >> health [ 
	^ health
]

{ #category : #accessing }
SHCharacterCard >> health: aNumber [

	health := aNumber 
]

{ #category : #accessing }
SHCharacterCard >> isRevealed [ 
	^ revealed 
]

{ #category : #accessing }
SHCharacterCard >> revealed: aBoolean [ 
	revealed := aBoolean 
]

{ #category : #accessing }
SHCharacterCard >> team [ 
	^ team
]

{ #category : #accessing }
SHCharacterCard >> team: aTeam [

	team := aTeam 
]
