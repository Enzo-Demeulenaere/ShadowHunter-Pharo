Class {
	#name : #SHActions,
	#superclass : #Object,
	#category : #ShadowHunter
}

{ #category : #'card effects' }
SHActions class >> ange_gardien_Effect: aPlayer [ 

	"set up the player as unattackable OR attackable but with no damage taken"
]

{ #category : #'dice actions' }
SHActions class >> attackRoll [

	|d4 d6|
	d4 := self rollD4.
	d6 := self rollD6.
	^ (d4 max: d6) - (d4 min: d6)
]

{ #category : #choices }
SHActions class >> chooseAmongAllPlayers [

	
]

{ #category : #choices }
SHActions class >> chooseAmongList: anOrderedCollection [
]

{ #category : #choices }
SHActions class >> chooseAmongNearPlayers [

	
]

{ #category : #choices }
SHActions class >> chooseAmongOtherPlayers [

	
]

{ #category : #choices }
SHActions class >> chooseAmongPiles [
]

{ #category : #choices }
SHActions class >> chooseAmongPlaces [

	
]

{ #category : #choices }
SHActions class >> chooseAmongStuff [

	
]

{ #category : #'basic actions' }
SHActions class >> deal: aNumber to: aPlayer [

	"def damage(target,amount):
    if amount != None and target != None:
        if amount>0:
            for stuff in target.stuff:
                amount-= stuff.onDefense()
            target.wounds+=amount
            print(target.username,""a subi"",amount,""blessures"")
            print(target.username,""a desormais un total de"",target.wounds,""blessures"")
            target.checkDeath()"
]

{ #category : #'basic actions' }
SHActions class >> findTarget: aString [ 
	"def findTarget(player,target):
    match target:
        case ""self"":
            return player
        case ""anotherPlayer"":
            return choice.chooseAmongOtherPlayers(player)
        case ""oneAmongPlayers"":
            return choice.chooseAmongAllPlayers(player)
        case ""allPlayers"":
            myList = player.game.players
            return myList
        case ""allWithoutPlayer"":
            myList = player.game.players.copy()
            myList.remove(player)
            return myList"
]

{ #category : #'basic actions' }
SHActions class >> giveStuffTo: aPlayer [
	"
def takeStuff(player,target):
    if target.stuff!=[]:
        #ligne temporaire => requiert le choix du joueur
        stolen = choice.chooseAmongStuff(target)
        player.stuff.append(stolen)
        target.stuff.remove(stolen)
        print(player.username,""a volé"",stolen.name,""à"",target.username)"

	
]

{ #category : #'basic actions' }
SHActions class >> heal: aNumber to: aPlayer [
	"def heal(target,amount):
    if amount != None:
        if amount == ""1d4"":
            amount = dice.rollD4()
        elif amount == ""1d6"":
            amount = dice.rollD6()
        if target.wounds >= amount:
            target.wounds -= amount
            print(target.username,""a été soigné.e de"",amount,""blessures"")
            print(target.username,""a desormais un total de"",target.wounds,""blessures"")
        else :
            target.wounds = 0"
]

{ #category : #'dice actions' }
SHActions class >> moveRoll [

	^ self rollD4 + self rollD6
]

{ #category : #'card effects' }
SHActions class >> peau_de_banade_Effect: aPlayer [
	"def peauDeBanane(player):
    if player.stuff != []:
        target = actions.findTarget(player,""anotherPlayer"")
        actions.takeStuff(target,player)
    else:
        actions.damage(player,1)"
   

	
]

{ #category : #'card effects' }
SHActions class >> poupee_demoniaque_Effect: aPlayer [
	"def poupeeDemoniaque(player):
    target = actions.findTarget(player,'anotherPlayer')
    d = dice.rollD6()
    if d <5:
        actions.damage(target,3)
    else:
        actions.damage(player,3)"

	
]

{ #category : #'dice actions' }
SHActions class >> rollD4 [

	^ (1 to: 4) atRandom
]

{ #category : #'dice actions' }
SHActions class >> rollD6 [

	^ (1 to: 6) atRandom
]

{ #category : #'basic actions' }
SHActions class >> takeStuffTo: aPlayer [ 
	"
def takeStuff(player,target):
    if target.stuff!=[]:
        #ligne temporaire => requiert le choix du joueur
        stolen = choice.chooseAmongStuff(target)
        player.stuff.append(stolen)
        target.stuff.remove(stolen)
        print(player.username,""a volé"",stolen.name,""à"",target.username)"
]

{ #category : #'see class side' }
SHActions >> seeClassSide [ 
]
