/* Domotique
 * Author: Pierre Caillaud et Loïc Mahier
 * Creation date: 05/12/18
 * Exercice n°3 de la feuille de TD
 */
 
MACHINE
    Domotique

SETS
    CATEGORIE = {mobile, fixe} /* l'ensemble des catégories des objets, il y en a 2 */
    ; ETAT = {actif, inactif, invalide} /* l'ensemble des états des objets, il y en a 3*/
    ; OBJET /* l'ensemble des objets */
    
VARIABLES
    categorie
    , etat
    , incompatible /* l'ensemble des couples d'objets incompatibles */
    , objet
    , position /* l'ensemble des positions (couple (x,y)) des objets mobiles */
    
INVARIANT
    objet <: OBJET
    & categorie : objet --> CATEGORIE
    & etat : objet --> ETAT
    & position : objet --> (NAT * NAT)
    & !(obj, pos) . ((obj : OBJET & pos : (NAT * NAT) & obj |-> pos : position) => (#(cat) . (cat : CATEGORIE & cat = mobile)))
    & incompatible : OBJET <-> OBJET
    & !(obj1, obj2) . ((obj1 : OBJET & obj2 : OBJET & obj1 |-> obj2 : incompatible) => (#(et1, et2) . (et1 : ETAT & et2 : ETAT & (obj1 |-> et1 : etat & obj2 |-> et2 : etat) & (et1 /= actif or et2 /= actif))))
    
INITIALISATION
    categorie := {}
    || etat := {}
    || incompatible := {}
    || objet := {}
    || position := {}

OPERATIONS
    
    addObjet(obj, cat) =
        PRE
            obj : OBJET
            & obj /: objet
            & cat : CATEGORIE
            & {obj |-> cat} /<: categorie
        THEN
            categorie := categorie \/ { obj |-> cat}
            || etat := etat \/ {obj |-> inactif}
            || objet := objet \/ {obj}
            /* mettre une position initiale ? */
        END
    ;

    activerObjetMobile(obj) =
        PRE
            obj : OBJET
            & obj : objet
            & {obj |-> mobile} <: categorie 
            & {obj |-> actif} /<: etat 
        THEN
            etat := etat - {obj |-> inactif} - {obj |-> invalide} \/ {obj |-> actif} /* on tolère invalide ? */
        END
    ;
    
    desactiverObjet(obj) =
        PRE
            obj : OBJET
            & obj : objet
            & {obj |-> inactif} /<: etat /* on tolère invalide ? */
        THEN
            etat := etat - {obj |-> actif} - {obj |-> invalide} \/ {obj |-> inactif}  
        END
    ;

/* ne devrait pas avoir de parma donc pas de PRE */
//    activerObjetFixe = /* activer le système d'alarme */
//        PRE
//            obj : OBJET
//            & obj : objet
//            & {obj |-> fixe} <: categorie 
//            & {obj |-> actif} /<: etat /* on tolère invalide ? */            
//        THEN
//            etat := etat - {obj |-> inactif} - {obj |-> invalide} \/ {obj |-> actif} 
//        END
//    ;

    res <-- getObjetActif =
        BEGIN
            res := etat ~[{actif}]
        END
    ;

    res <-- getObjetInvalide = 
        BEGIN
            res := etat ~[{invalide}]
        END

END
