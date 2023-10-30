Class {
	#name : #SHPlace,
	#superclass : #Object,
	#instVars : [
		'id',
		'players',
		'neighbor',
		'effect'
	],
	#category : #ShadowHunter
}

{ #category : #'as yet unclassified' }
SHPlace class >> createFromCard: aDictionary [

	| place |
	place := self new.
	place
		id: (aDictionary at: 'id');
		effect: (aDictionary at: 'effect').
	^ place
]

{ #category : #accessing }
SHPlace >> effect [ 
	^ effect 
]

{ #category : #accessing }
SHPlace >> effect: anEffect [

	effect := anEffect 
]

{ #category : #accessing }
SHPlace >> id [ 
	^ id
]

{ #category : #accessing }
SHPlace >> id: aDictionary [ 
	id := aDictionary 
]

{ #category : #initialization }
SHPlace >> initialize [ 
	super initialize.
	players := Dictionary new.
]

{ #category : #accessing }
SHPlace >> neighbor [ 
	^ neighbor 
]

{ #category : #accessing }
SHPlace >> neighbor: aSHPlace [
	neighbor := aSHPlace 
]

{ #category : #accessing }
SHPlace >> players [ 
	^ players
]

{ #category : #accessing }
SHPlace >> players: anOrderedCollection [

	players := anOrderedCollection
]
