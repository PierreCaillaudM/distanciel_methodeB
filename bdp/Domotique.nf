Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Domotique))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Domotique))==(Machine(Domotique));
  Level(Machine(Domotique))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Domotique)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Domotique))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Domotique))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Domotique))==(?);
  List_Includes(Machine(Domotique))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Domotique))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Domotique))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Domotique))==(?);
  Context_List_Variables(Machine(Domotique))==(?);
  Abstract_List_Variables(Machine(Domotique))==(?);
  Local_List_Variables(Machine(Domotique))==(position,objet,incompatible,etat,categorie);
  List_Variables(Machine(Domotique))==(position,objet,incompatible,etat,categorie);
  External_List_Variables(Machine(Domotique))==(position,objet,incompatible,etat,categorie)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Domotique))==(?);
  Abstract_List_VisibleVariables(Machine(Domotique))==(?);
  External_List_VisibleVariables(Machine(Domotique))==(?);
  Expanded_List_VisibleVariables(Machine(Domotique))==(?);
  List_VisibleVariables(Machine(Domotique))==(?);
  Internal_List_VisibleVariables(Machine(Domotique))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Domotique))==(btrue);
  Gluing_List_Invariant(Machine(Domotique))==(btrue);
  Expanded_List_Invariant(Machine(Domotique))==(btrue);
  Abstract_List_Invariant(Machine(Domotique))==(btrue);
  Context_List_Invariant(Machine(Domotique))==(btrue);
  List_Invariant(Machine(Domotique))==(objet <: OBJET & categorie: objet --> CATEGORIE & etat: objet --> ETAT & position: objet --> NAT*NAT & !(obj,pos).(obj: OBJET & pos: NAT*NAT & obj|->pos: position => #cat.(cat: CATEGORIE & cat = mobile)) & !(obj1,obj2,pos1,pos2).(obj1: OBJET & obj2: OBJET & pos1: NAT*NAT & pos2: NAT*NAT & obj1|->pos1: position & obj2|->pos2: position => pos1/=pos2) & incompatible: OBJET <-> OBJET & !(obj1,obj2).(obj1: OBJET & obj2: OBJET & obj1|->obj2: incompatible => #(et1,et2).(et1: ETAT & et2: ETAT & (obj1|->et1: etat & obj2|->et2: etat) & (et1/=actif or et2/=actif))))
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Domotique))==(btrue);
  Abstract_List_Assertions(Machine(Domotique))==(btrue);
  Context_List_Assertions(Machine(Domotique))==(btrue);
  List_Assertions(Machine(Domotique))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Domotique))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Domotique))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Domotique))==(categorie,etat,incompatible,objet,position:={},{},{},{},{});
  Context_List_Initialisation(Machine(Domotique))==(skip);
  List_Initialisation(Machine(Domotique))==(categorie:={} || etat:={} || incompatible:={} || objet:={} || position:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Domotique))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Domotique))==(btrue);
  List_Constraints(Machine(Domotique))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Domotique))==(addObjet,activerObjetMobile,desactiverObjet,activerObjetFixe,getObjetActif,getObjetInvalide);
  List_Operations(Machine(Domotique))==(addObjet,activerObjetMobile,desactiverObjet,activerObjetFixe,getObjetActif,getObjetInvalide)
END
&
THEORY ListInputX IS
  List_Input(Machine(Domotique),addObjet)==(obj,cat);
  List_Input(Machine(Domotique),activerObjetMobile)==(obj);
  List_Input(Machine(Domotique),desactiverObjet)==(obj);
  List_Input(Machine(Domotique),activerObjetFixe)==(?);
  List_Input(Machine(Domotique),getObjetActif)==(?);
  List_Input(Machine(Domotique),getObjetInvalide)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Domotique),addObjet)==(?);
  List_Output(Machine(Domotique),activerObjetMobile)==(?);
  List_Output(Machine(Domotique),desactiverObjet)==(?);
  List_Output(Machine(Domotique),activerObjetFixe)==(?);
  List_Output(Machine(Domotique),getObjetActif)==(res);
  List_Output(Machine(Domotique),getObjetInvalide)==(res)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Domotique),addObjet)==(addObjet(obj,cat));
  List_Header(Machine(Domotique),activerObjetMobile)==(activerObjetMobile(obj));
  List_Header(Machine(Domotique),desactiverObjet)==(desactiverObjet(obj));
  List_Header(Machine(Domotique),activerObjetFixe)==(activerObjetFixe);
  List_Header(Machine(Domotique),getObjetActif)==(res <-- getObjetActif);
  List_Header(Machine(Domotique),getObjetInvalide)==(res <-- getObjetInvalide)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Domotique),addObjet)==(obj: OBJET & obj/:objet & cat: CATEGORIE & {obj|->cat} /<: categorie);
  List_Precondition(Machine(Domotique),activerObjetMobile)==(obj: OBJET & obj: objet & {obj|->mobile} <: categorie & {obj|->actif} /<: etat & {obj|->invalide} /<: etat & {obj|->inactif} <: etat);
  List_Precondition(Machine(Domotique),desactiverObjet)==(obj: OBJET & obj: objet & {obj|->inactif} /<: etat & {obj|->invalide} /<: etat & {obj|->actif} <: etat);
  List_Precondition(Machine(Domotique),activerObjetFixe)==(!(obj,cat).(obj: OBJET & cat: CATEGORIE & obj|->cat: categorie & cat = fixe => #et.(et: ETAT & obj|->et: etat & et = inactif)));
  List_Precondition(Machine(Domotique),getObjetActif)==(btrue);
  List_Precondition(Machine(Domotique),getObjetInvalide)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Domotique),getObjetInvalide)==(btrue | res:=etat~[{invalide}]);
  Expanded_List_Substitution(Machine(Domotique),getObjetActif)==(btrue | res:=etat~[{actif}]);
  Expanded_List_Substitution(Machine(Domotique),activerObjetFixe)==(!(obj,cat).(obj: OBJET & cat: CATEGORIE & obj|->cat: categorie & cat = fixe => #et.(et: ETAT & obj|->et: etat & et = inactif)) | @(obj,cat,et).(obj: OBJET & cat: CATEGORIE & et: ETAT & obj|->cat: categorie & cat = fixe & obj|->et: etat & et = inactif ==> etat:=etat-{obj|->inactif}\/{obj|->actif}));
  Expanded_List_Substitution(Machine(Domotique),desactiverObjet)==(obj: OBJET & obj: objet & {obj|->inactif} /<: etat & {obj|->invalide} /<: etat & {obj|->actif} <: etat | etat:=etat-{obj|->actif}\/{obj|->inactif});
  Expanded_List_Substitution(Machine(Domotique),activerObjetMobile)==(obj: OBJET & obj: objet & {obj|->mobile} <: categorie & {obj|->actif} /<: etat & {obj|->invalide} /<: etat & {obj|->inactif} <: etat | etat:=etat-{obj|->inactif}\/{obj|->actif});
  Expanded_List_Substitution(Machine(Domotique),addObjet)==(obj: OBJET & obj/:objet & cat: CATEGORIE & {obj|->cat} /<: categorie | categorie,etat,objet:=categorie\/{obj|->cat},etat\/{obj|->inactif},objet\/{obj});
  List_Substitution(Machine(Domotique),addObjet)==(categorie:=categorie\/{obj|->cat} || etat:=etat\/{obj|->inactif} || objet:=objet\/{obj});
  List_Substitution(Machine(Domotique),activerObjetMobile)==(etat:=etat-{obj|->inactif}\/{obj|->actif});
  List_Substitution(Machine(Domotique),desactiverObjet)==(etat:=etat-{obj|->actif}\/{obj|->inactif});
  List_Substitution(Machine(Domotique),activerObjetFixe)==(ANY obj,cat,et WHERE obj: OBJET & cat: CATEGORIE & et: ETAT & obj|->cat: categorie & cat = fixe & obj|->et: etat & et = inactif THEN etat:=etat-{obj|->inactif}\/{obj|->actif} END);
  List_Substitution(Machine(Domotique),getObjetActif)==(res:=etat~[{actif}]);
  List_Substitution(Machine(Domotique),getObjetInvalide)==(res:=etat~[{invalide}])
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Domotique))==(?);
  Inherited_List_Constants(Machine(Domotique))==(?);
  List_Constants(Machine(Domotique))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Domotique),CATEGORIE)==({mobile,fixe});
  Context_List_Enumerated(Machine(Domotique))==(?);
  Context_List_Defered(Machine(Domotique))==(?);
  Context_List_Sets(Machine(Domotique))==(?);
  List_Valuable_Sets(Machine(Domotique))==(OBJET);
  Inherited_List_Enumerated(Machine(Domotique))==(?);
  Inherited_List_Defered(Machine(Domotique))==(?);
  Inherited_List_Sets(Machine(Domotique))==(?);
  List_Enumerated(Machine(Domotique))==(CATEGORIE,ETAT);
  List_Defered(Machine(Domotique))==(OBJET);
  List_Sets(Machine(Domotique))==(CATEGORIE,ETAT,OBJET);
  Set_Definition(Machine(Domotique),ETAT)==({actif,inactif,invalide});
  Set_Definition(Machine(Domotique),OBJET)==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Domotique))==(?);
  Expanded_List_HiddenConstants(Machine(Domotique))==(?);
  List_HiddenConstants(Machine(Domotique))==(?);
  External_List_HiddenConstants(Machine(Domotique))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Domotique))==(btrue);
  Context_List_Properties(Machine(Domotique))==(btrue);
  Inherited_List_Properties(Machine(Domotique))==(btrue);
  List_Properties(Machine(Domotique))==(OBJET: FIN(INTEGER) & not(OBJET = {}) & CATEGORIE: FIN(INTEGER) & not(CATEGORIE = {}) & ETAT: FIN(INTEGER) & not(ETAT = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Domotique),addObjet)==(?);
  List_ANY_Var(Machine(Domotique),activerObjetMobile)==(?);
  List_ANY_Var(Machine(Domotique),desactiverObjet)==(?);
  List_ANY_Var(Machine(Domotique),activerObjetFixe)==((Var(obj) == atype(OBJET,?,?)),(Var(cat) == etype(CATEGORIE,?,?)),(Var(et) == etype(ETAT,?,?)));
  List_ANY_Var(Machine(Domotique),getObjetActif)==(?);
  List_ANY_Var(Machine(Domotique),getObjetInvalide)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Domotique)) == (CATEGORIE,ETAT,OBJET,mobile,fixe,actif,inactif,invalide | ? | position,objet,incompatible,etat,categorie | ? | addObjet,activerObjetMobile,desactiverObjet,activerObjetFixe,getObjetActif,getObjetInvalide | ? | ? | ? | Domotique);
  List_Of_HiddenCst_Ids(Machine(Domotique)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Domotique)) == (?);
  List_Of_VisibleVar_Ids(Machine(Domotique)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Domotique)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Domotique)) == (Type(CATEGORIE) == Cst(SetOf(etype(CATEGORIE,0,1)));Type(ETAT) == Cst(SetOf(etype(ETAT,0,2)));Type(OBJET) == Cst(SetOf(atype(OBJET,"[OBJET","]OBJET"))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Domotique)) == (Type(mobile) == Cst(etype(CATEGORIE,0,1));Type(fixe) == Cst(etype(CATEGORIE,0,1));Type(actif) == Cst(etype(ETAT,0,2));Type(inactif) == Cst(etype(ETAT,0,2));Type(invalide) == Cst(etype(ETAT,0,2)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Domotique)) == (Type(position) == Mvl(SetOf(atype(OBJET,?,?)*(btype(INTEGER,0,MAXINT)*btype(INTEGER,0,MAXINT))));Type(objet) == Mvl(SetOf(atype(OBJET,?,?)));Type(incompatible) == Mvl(SetOf(atype(OBJET,?,?)*atype(OBJET,?,?)));Type(etat) == Mvl(SetOf(atype(OBJET,?,?)*etype(ETAT,0,2)));Type(categorie) == Mvl(SetOf(atype(OBJET,?,?)*etype(CATEGORIE,0,1))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Domotique)) == (Type(getObjetInvalide) == Cst(SetOf(atype(OBJET,?,?)),No_type);Type(getObjetActif) == Cst(SetOf(atype(OBJET,?,?)),No_type);Type(activerObjetFixe) == Cst(No_type,No_type);Type(desactiverObjet) == Cst(No_type,atype(OBJET,?,?));Type(activerObjetMobile) == Cst(No_type,atype(OBJET,?,?));Type(addObjet) == Cst(No_type,atype(OBJET,?,?)*etype(CATEGORIE,?,?)));
  Observers(Machine(Domotique)) == (Type(getObjetInvalide) == Cst(SetOf(atype(OBJET,?,?)),No_type);Type(getObjetActif) == Cst(SetOf(atype(OBJET,?,?)),No_type))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == SOFTWARE_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
)
