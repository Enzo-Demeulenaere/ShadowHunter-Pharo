Class {
	#name : #SHEffect,
	#superclass : #Object,
	#instVars : [
		'target',
		'damage',
		'heal',
		'stuff'
	],
	#category : #ShadowHunter
}

{ #category : #accessing }
SHEffect >> damage [ 
	^ damage
]

{ #category : #accessing }
SHEffect >> damage: aNumber [

	damage := aNumber 
]

{ #category : #accessing }
SHEffect >> heal [ 
	^ heal
]

{ #category : #accessing }
SHEffect >> heal: aNumber [

	heal := aNumber 
]

{ #category : #accessing }
SHEffect >> stuff [ 
	^ stuff
]

{ #category : #accessing }
SHEffect >> stuff: aString [

	stuff := aString 
]

{ #category : #accessing }
SHEffect >> target [ 
	^ target
]

{ #category : #accessing }
SHEffect >> target: aString [

	target := aString 
]
