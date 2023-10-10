Class {
	#name : #SHRessources,
	#superclass : #Object,
	#category : #'ShadowHunter-Ressources'
}

{ #category : #placesCards }
SHRessources class >> antreCard [ 
	^ Dictionary new
		at: 'id' put: {2. 3};
		at: 'desc' put: 'Vous pouvez piocher une carte Vision';
		at: 'image' put: nil;
		at: 'draw' put: 'vision';
		at: 'effects' put: nil
        
]

{ #category : #darkCards }
SHRessources class >> banane_Card [ 
	^ Dictionary new
		at: 'desc' put: 'Donnez une de vos cartes équipement à un autre joueur. Si vous n''en possédez aucune, vous encaissez 1 blessure';
		at: 'image' put: nil;
		at: 'type' put: 'dark';
		at: 'effects' put: {  
			Dictionary new at: 'target' put: 'anotherPlayer'; 
				at: 'damage' put: nil;
				at: 'heal' put: nil;
				at: 'stuff' put: -1.
			Dictionary new at: 'target' put: 'self'; 
				at: 'damage' put: 1;
				at: 'heal' put: nil;
				at: 'stuff' put: nil }
        
]

{ #category : #darkCards }
SHRessources class >> chauve_souris_Card [ 
	^ Dictionary new
		at: 'desc' put: 'Infligez 2 Blessures au joueur de votre choix puis soignez une de vos blessures';
		at: 'image' put: nil;
		at: 'type' put: 'dark';
		at: 'effects' put: {  
			Dictionary new at: 'target' put: 'anotherPlayer'; 
				at: 'damage' put: 2;
				at: 'heal' put: nil;
				at: 'stuff' put: nil.
			Dictionary new at: 'target' put: 'self'; 
				at: 'damage' put: nil;
				at: 'heal' put: 1;
				at: 'stuff' put: nil }
        
]

{ #category : #placesCards }
SHRessources class >> cimetiereCard [ 
	^ Dictionary new
		at: 'id' put: {8};
		at: 'desc' put: 'Vous pouvez piocher une carte Tenebres';
		at: 'image' put: nil;
		at: 'draw' put: 'dark';
		at: 'effects' put: nil
        
]

{ #category : #darkCards }
SHRessources class >> darkCards [ 
]

{ #category : #placesCards }
SHRessources class >> foretCard [ 
	^ Dictionary new
		at: 'id' put: {9};
		at: 'desc' put: 'Le joueur de votre choix peut subir 2 blessures OU se soigner de 1 blessure';
		at: 'image' put: nil;
		at: 'draw' put: nil;
		at: 'effects' put: {  
			Dictionary new at: 'target' put: 'oneAmongPlayers'; 
				at: 'damage' put: 2;
				at: 'heal' put: nil;
				at: 'stuff' put: nil.
			Dictionary new at: 'target' put: 'oneAmongPlayers';
				at: 'damage' put: nil;
				at: 'heal' put: 1;
				at: 'stuff' put: nil }
        
]

{ #category : #darkCards }
SHRessources class >> hachoir_Card [ 
	^ Dictionary new
		at: 'desc' put: 'Si votre attaque inflige des blessures, la victime subit 1 blessure supplémentaire';
		at: 'image' put: nil;
		at: 'type' put: 'dark';
		at: 'effects' put: 'stuff'
]

{ #category : #darkCards }
SHRessources class >> masamune_Card [ 
	^ Dictionary new
		at: 'desc' put: 'Vous êtes obligés d''attaquer durant votre tour. Lancez uniquement le dé à 4 faces, le résultat indique les blessures que vous infligez';
		at: 'image' put: nil;
		at: 'type' put: 'dark';
		at: 'effects' put: 'stuff'
]

{ #category : #placesCards }
SHRessources class >> monastereCard [ 
	^ Dictionary new
		at: 'id' put: {6};
		at: 'desc' put: 'Vous pouvez piocher une carte Lumière';
		at: 'image' put: nil;
		at: 'draw' put: 'light';
		at: 'effects' put: nil
        
]

{ #category : #placesCards }
SHRessources class >> placesCards [
	^ Dictionary new at: 'antre' put: self antreCard;
		at: 'cimetiere' put: self cimetiereCard;
		at: 'foret' put: self foretCard;
		at: 'monastere' put: self monastereCard;
		at: 'porte' put: self porteCard;
		at: 'sanctuaire' put: self sanctuaireCard 
]

{ #category : #placesCards }
SHRessources class >> porteCard [ 
	^ Dictionary new
		at: 'id' put: {4. 5};
		at: 'desc' put: 'Vous pouvez piocher une carte de la pile de votre choix';
		at: 'image' put: nil;
		at: 'draw' put: 'choice';
		at: 'effects' put: nil
        
]

{ #category : #darkCards }
SHRessources class >> poupee_Card [ 
	^ Dictionary new
		at: 'desc' put: 'Désignez un joueur et lancez le dé à 6 faces. 1 à 4 -> Infligez-lui 3 blessures. 5 ou 6 -> Subissez 3 blessures';
		at: 'image' put: nil;
		at: 'type' put: 'dark';
		at: 'effects' put: {  
			Dictionary new at: 'target' put: 'anotherPlayer'; 
				at: 'damage' put: 3;
				at: 'heal' put: nil;
				at: 'stuff' put: nil.
			Dictionary new at: 'target' put: 'self'; 
				at: 'damage' put: nil;
				at: 'heal' put: 3;
				at: 'stuff' put: nil }
        
]

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

{ #category : #placesCards }
SHRessources class >> sanctuaireCard [ 
	^ Dictionary new
		at: 'id' put: {10};
		at: 'desc' put: 'Vous pouvez voler une carte équipement à un autre joueur';
		at: 'image' put: nil;
		at: 'draw' put: nil;
		at: 'effects' put: {  
			Dictionary new at: 'target' put: 'oneAmongPlayers'; 
				at: 'damage' put: nil;
				at: 'heal' put: nil;
				at: 'stuff' put: 1 }
        
]

{ #category : #darkCards }
SHRessources class >> succube_Card [ 
	^ Dictionary new
		at: 'desc' put: 'Volez une carte équipement au joueur de votre choix';
		at: 'image' put: nil;
		at: 'type' put: 'dark';
		at: 'effects' put: {  
			Dictionary new at: 'target' put: 'anotherPlayer'; 
				at: 'damage' put: nil;
				at: 'heal' put: nil;
				at: 'stuff' put: 1 }
        
]

{ #category : #'see class side' }
SHRessources >> seeClassSide [ 
]
