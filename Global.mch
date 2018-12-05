/* Global
 * Author: 
 * Creation date: 05/12/18
 */
 
MACHINE
    Global

SETS
    OBJET
    ; CATEGORIE = {mobile, fixe}
    ; ETAT = {actif, inactif, invalide}
    ; INCOMPATIBLE  
    
VARIABLES
    categorie
    , etat
    , objet
    , position
    , incompatible
    
INVARIANT
    objet <: OBJET
    & categorie : objet --> CATEGORIE
    & etat : objet --> ETAT
    & position : objet --> (NAT |-> NAT)
    & (objet |-> position <: categorie) => categorie = mobile
    & incompatible : objet --> OBJET 
    & (((obj1 |-> obj2 <: incompatible) & (obj1 --> et1 <: ETAT & obj2 --> et2 <: ETAT)) => (et1 /= actif & et2 /= actif))
    
INITIALISATION
    categorie := {}
    || etat := {}
    || objet := {}
    || position := {}
    || incompatible := {}
    

    
    
END
