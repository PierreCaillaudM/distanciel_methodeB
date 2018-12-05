/* Global
 * Author: 
 * Creation date: 05/12/18
 */
MACHINE
    Global
SETS
    OBJETS
    ; CATEGORIE = {mobile, fixe}
    ; ETAT = {actif, inactif, invalide}
    ; POSITION = {x,y}
    ; TYPE = {robot, alarme}
    
VARIABLES
    categorie
    , etat
    , objet
    , type
    
INVARIANT
    objet <: OBJETS
    & categorie : objet --> CATEGORIE
    & etat : objet --> ETAT
    & type : objet --> TYPE
    
INITIALISATION
    categorie := {}
    || etat := {}
    [[ objet := {}
    || type := {}
    
END
