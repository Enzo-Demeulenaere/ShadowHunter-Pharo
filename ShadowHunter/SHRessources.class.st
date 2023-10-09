Class {
	#name : #SHRessources,
	#superclass : #Object,
	#category : #'ShadowHunter-Ressources'
}

{ #category : #roleCards }
SHRessources class >> roleCards [
	^ Dictionary new 
		at: 'Georges' put: self class roleGeorges;
		at: 'Franklin' put: self class roleFranklin;
		at: 'Loup Garou' put: self class roleLoupGarou;
		at: 'Vampire' put: self class roleVampire
]

{ #category : #roleCards }
SHRessources class >> roleFranklin [ 
	^ Dictionary new
		at: 'image' put: nil;
		at: 'desc' put: 'Capacité spéciale : Foudre [Utilisation unique].
		Au début de votre tour, choisissez un joueur et infligez-lui autant de blessures que le résultat d''un dé à 6 faces.';
		at: 'type' put: 'Hunter';
		at: 'hp' put: 12	
        
]

{ #category : #roleCards }
SHRessources class >> roleGeorges [ 
	^ Dictionary new
		at: 'image' put: nil;
		at: 'desc' put: 'Capacité spéciale : Démolition [Utilisation unique].
		Au début de votre tour, choisissez un joueur et infligez-lui autant de blessures que le résultat d''un dé à 4 faces.';
		at: 'type' put: 'Hunter';
		at: 'hp' put: 10
        
]

{ #category : #roleCards }
SHRessources class >> roleLoupGarou [ 
	^ Dictionary new
		at: 'image' put: nil;
		at: 'desc' put: 'Capacité spéciale: Contre-Attaque.
		Après avoir subi l''attaque d''un joueur, vous pouvez contre-attaquer immédiatement (sans prendre en compte vos équipements).';
		at: 'type' put: 'Shadow';
		at: 'hp' put: 14	
        
]

{ #category : #roleCards }
SHRessources class >> roleVampire [ 
	^ Dictionary new
		at: 'image' put: nil;
		at: 'desc' put: 'Capacité spéciale: Morsure.
		Si vous attaquez un joueur et lui infligez des blessures, soignez immédiatement 2 de vos blessures.';
		at: 'type' put: 'Shadow';
		at: 'hp' put: 13	
        
]

{ #category : #'see class side' }
SHRessources >> seeClassSide [ 
]
