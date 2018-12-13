Normalised(
THEORY MagicNumberX IS
  MagicNumber(Refinement(Domotique_r))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Refinement(Domotique_r))==(Machine(Domotique));
  Level(Refinement(Domotique_r))==(1);
  Upper_Level(Refinement(Domotique_r))==(Machine(Domotique))
END
&
THEORY LoadedStructureX IS
  Refinement(Domotique_r)
END
&
THEORY ListSeesX IS
  List_Sees(Refinement(Domotique_r))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Refinement(Domotique_r))==(?);
  List_Includes(Refinement(Domotique_r))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Refinement(Domotique_r))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Refinement(Domotique_r))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Refinement(Domotique_r))==(?);
  Context_List_Variables(Refinement(Domotique_r))==(?);
  Abstract_List_Variables(Refinement(Domotique_r))==(position,objet,incompatible,etat,categorie);
  Local_List_Variables(Refinement(Domotique_r))==(position,objet,incompatible,etat,categorie);
  List_Variables(Refinement(Domotique_r))==(position,objet,incompatible,etat,categorie);
  External_List_Variables(Refinement(Domotique_r))==(position,objet,incompatible,etat,categorie)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Refinement(Domotique_r))==(?);
  Abstract_List_VisibleVariables(Refinement(Domotique_r))==(?);
  External_List_VisibleVariables(Refinement(Domotique_r))==(?);
  Expanded_List_VisibleVariables(Refinement(Domotique_r))==(?);
  List_VisibleVariables(Refinement(Domotique_r))==(?);
  Internal_List_VisibleVariables(Refinement(Domotique_r))==(?)
END
&
THEORY ListOfNewVariablesX IS
  List_Of_New_Variables(Refinement(Domotique_r))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Refinement(Domotique_r))==(btrue);
  Expanded_List_Invariant(Refinement(Domotique_r))==(btrue);
  Abstract_List_Invariant(Refinement(Domotique_r))==(objet <: OBJET & categorie: objet --> CATEGORIE & etat: objet --> ETAT & position: objet --> NAT*NAT & !(obj,pos).(obj: OBJET & pos: NAT*NAT & obj|->pos: position => #cat.(cat: CATEGORIE & cat = mobile)) & !(obj1,obj2,pos1,pos2).(obj1: OBJET & obj2: OBJET & pos1: NAT*NAT & pos2: NAT*NAT & obj1|->pos1: position & obj2|->pos2: position => pos1/=pos2) & incompatible: OBJET <-> OBJET & !(obj1,obj2).(obj1: OBJET & obj2: OBJET & obj1|->obj2: incompatible => #(et1,et2).(et1: ETAT & et2: ETAT & (obj1|->et1: etat & obj2|->et2: etat) & (et1/=actif or et2/=actif))));
  Context_List_Invariant(Refinement(Domotique_r))==(btrue);
  List_Invariant(Refinement(Domotique_r))==(btrue)
END
&
THEORY ListVariantX IS
  List_Variant(Refinement(Domotique_r))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Refinement(Domotique_r))==(btrue);
  Abstract_List_Assertions(Refinement(Domotique_r))==(btrue);
  Context_List_Assertions(Refinement(Domotique_r))==(btrue);
  List_Assertions(Refinement(Domotique_r))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Refinement(Domotique_r))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Refinement(Domotique_r))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Refinement(Domotique_r))==(categorie:={};etat:={};incompatible:={};objet:={};position:={});
  Context_List_Initialisation(Refinement(Domotique_r))==(skip);
  List_Initialisation(Refinement(Domotique_r))==(categorie:={};etat:={};incompatible:={};objet:={};position:={})
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Refinement(Domotique_r))==(addObjet,activerObjetMobile,desactiverObjet,activerObjetFixe,getObjetActif,getObjetInvalide);
  List_Operations(Refinement(Domotique_r))==(addObjet,activerObjetMobile,desactiverObjet,activerObjetFixe,getObjetActif,getObjetInvalide)
END
&
THEORY ListInputX IS
  List_Input(Refinement(Domotique_r),addObjet)==(obj,cat);
  List_Input(Refinement(Domotique_r),activerObjetMobile)==(obj);
  List_Input(Refinement(Domotique_r),desactiverObjet)==(obj);
  List_Input(Refinement(Domotique_r),activerObjetFixe)==(?);
  List_Input(Refinement(Domotique_r),getObjetActif)==(?);
  List_Input(Refinement(Domotique_r),getObjetInvalide)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Refinement(Domotique_r),addObjet)==(?);
  List_Output(Refinement(Domotique_r),activerObjetMobile)==(?);
  List_Output(Refinement(Domotique_r),desactiverObjet)==(?);
  List_Output(Refinement(Domotique_r),activerObjetFixe)==(?);
  List_Output(Refinement(Domotique_r),getObjetActif)==(res);
  List_Output(Refinement(Domotique_r),getObjetInvalide)==(res)
END
&
THEORY ListHeaderX IS
  List_Header(Refinement(Domotique_r),addObjet)==(addObjet(obj,cat));
  List_Header(Refinement(Domotique_r),activerObjetMobile)==(activerObjetMobile(obj));
  List_Header(Refinement(Domotique_r),desactiverObjet)==(desactiverObjet(obj));
  List_Header(Refinement(Domotique_r),activerObjetFixe)==(activerObjetFixe);
  List_Header(Refinement(Domotique_r),getObjetActif)==(res <-- getObjetActif);
  List_Header(Refinement(Domotique_r),getObjetInvalide)==(res <-- getObjetInvalide)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  Own_Precondition(Refinement(Domotique_r),addObjet)==(btrue);
  List_Precondition(Refinement(Domotique_r),addObjet)==(obj: OBJET & obj/:objet & cat: CATEGORIE & {obj|->cat} /<: categorie);
  Own_Precondition(Refinement(Domotique_r),activerObjetMobile)==(btrue);
  List_Precondition(Refinement(Domotique_r),activerObjetMobile)==(obj: OBJET & obj: objet & {obj|->mobile} <: categorie & {obj|->actif} /<: etat & {obj|->invalide} /<: etat & {obj|->inactif} <: etat);
  Own_Precondition(Refinement(Domotique_r),desactiverObjet)==(btrue);
  List_Precondition(Refinement(Domotique_r),desactiverObjet)==(obj: OBJET & obj: objet & {obj|->inactif} /<: etat & {obj|->invalide} /<: etat & {obj|->actif} <: etat);
  Own_Precondition(Refinement(Domotique_r),activerObjetFixe)==(btrue);
  List_Precondition(Refinement(Domotique_r),activerObjetFixe)==(!(obj,cat).(obj: OBJET & cat: CATEGORIE & obj|->cat: categorie & cat = fixe => #et.(et: ETAT & obj|->et: etat & et = inactif)));
  Own_Precondition(Refinement(Domotique_r),getObjetActif)==(btrue);
  List_Precondition(Refinement(Domotique_r),getObjetActif)==(btrue);
  Own_Precondition(Refinement(Domotique_r),getObjetInvalide)==(btrue);
  List_Precondition(Refinement(Domotique_r),getObjetInvalide)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Refinement(Domotique_r),getObjetInvalide)==(btrue | res:=etat~[{invalide}]);
  Expanded_List_Substitution(Refinement(Domotique_r),getObjetActif)==(btrue | res:=etat~[{actif}]);
  Expanded_List_Substitution(Refinement(Domotique_r),activerObjetFixe)==(!(obj,cat).(obj: OBJET & cat: CATEGORIE & obj|->cat: categorie & cat = fixe => #et.(et: ETAT & obj|->et: etat & et = inactif)) | @(obj,cat,et).(obj: OBJET & cat: CATEGORIE & et: ETAT & obj|->cat: categorie & cat = fixe & obj|->et: etat & et = inactif ==> etat:=etat-{obj|->inactif}\/{obj|->actif}));
  Expanded_List_Substitution(Refinement(Domotique_r),desactiverObjet)==(obj: OBJET & obj: objet & {obj|->inactif} /<: etat & {obj|->invalide} /<: etat & {obj|->actif} <: etat | etat:=etat-{obj|->actif}\/{obj|->inactif});
  Expanded_List_Substitution(Refinement(Domotique_r),activerObjetMobile)==(obj: OBJET & obj: objet & {obj|->mobile} <: categorie & {obj|->actif} /<: etat & {obj|->invalide} /<: etat & {obj|->inactif} <: etat | etat:=etat-{obj|->inactif}\/{obj|->actif});
  Expanded_List_Substitution(Refinement(Domotique_r),addObjet)==(obj: OBJET & obj/:objet & cat: CATEGORIE & {obj|->cat} /<: categorie | categorie:=categorie\/{obj|->cat};etat:=etat\/{obj|->inactif};objet:=objet\/{obj});
  List_Substitution(Refinement(Domotique_r),addObjet)==(categorie:=categorie\/{obj|->cat};etat:=etat\/{obj|->inactif};objet:=objet\/{obj});
  List_Substitution(Refinement(Domotique_r),activerObjetMobile)==(etat:=etat-{obj|->inactif}\/{obj|->actif});
  List_Substitution(Refinement(Domotique_r),desactiverObjet)==(etat:=etat-{obj|->actif}\/{obj|->inactif});
  List_Substitution(Refinement(Domotique_r),activerObjetFixe)==(ANY obj,cat,et WHERE obj: OBJET & cat: CATEGORIE & et: ETAT & obj|->cat: categorie & cat = fixe & obj|->et: etat & et = inactif THEN etat:=etat-{obj|->inactif}\/{obj|->actif} END);
  List_Substitution(Refinement(Domotique_r),getObjetActif)==(res:=etat~[{actif}]);
  List_Substitution(Refinement(Domotique_r),getObjetInvalide)==(res:=etat~[{invalide}])
END
&
THEORY ListParametersX IS
  List_Parameters(Refinement(Domotique_r))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Constraints(Refinement(Domotique_r))==(btrue);
  List_Context_Constraints(Refinement(Domotique_r))==(btrue)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Refinement(Domotique_r))==(?);
  Inherited_List_Constants(Refinement(Domotique_r))==(?);
  List_Constants(Refinement(Domotique_r))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Refinement(Domotique_r),OBJET)==(?);
  Context_List_Enumerated(Refinement(Domotique_r))==(?);
  Context_List_Defered(Refinement(Domotique_r))==(?);
  Context_List_Sets(Refinement(Domotique_r))==(?);
  List_Valuable_Sets(Refinement(Domotique_r))==(OBJET);
  Inherited_List_Enumerated(Refinement(Domotique_r))==(CATEGORIE,ETAT);
  Inherited_List_Defered(Refinement(Domotique_r))==(OBJET);
  Inherited_List_Sets(Refinement(Domotique_r))==(CATEGORIE,ETAT,OBJET);
  List_Enumerated(Refinement(Domotique_r))==(?);
  List_Defered(Refinement(Domotique_r))==(?);
  List_Sets(Refinement(Domotique_r))==(?);
  Set_Definition(Refinement(Domotique_r),ETAT)==({actif,inactif,invalide});
  Set_Definition(Refinement(Domotique_r),CATEGORIE)==({mobile,fixe})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Refinement(Domotique_r))==(?);
  Expanded_List_HiddenConstants(Refinement(Domotique_r))==(?);
  List_HiddenConstants(Refinement(Domotique_r))==(?);
  External_List_HiddenConstants(Refinement(Domotique_r))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Refinement(Domotique_r))==(OBJET: FIN(INTEGER) & not(OBJET = {}) & CATEGORIE: FIN(INTEGER) & not(CATEGORIE = {}) & ETAT: FIN(INTEGER) & not(ETAT = {}));
  Context_List_Properties(Refinement(Domotique_r))==(btrue);
  Inherited_List_Properties(Refinement(Domotique_r))==(btrue);
  List_Properties(Refinement(Domotique_r))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Refinement(Domotique_r),addObjet)==(?);
  List_ANY_Var(Refinement(Domotique_r),activerObjetMobile)==(?);
  List_ANY_Var(Refinement(Domotique_r),desactiverObjet)==(?);
  List_ANY_Var(Refinement(Domotique_r),activerObjetFixe)==((Var(obj) == atype(OBJET,?,?)),(Var(cat) == etype(CATEGORIE,?,?)),(Var(et) == etype(ETAT,?,?)));
  List_ANY_Var(Refinement(Domotique_r),getObjetActif)==(?);
  List_ANY_Var(Refinement(Domotique_r),getObjetInvalide)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Refinement(Domotique_r)) == (? | ? | position,objet,incompatible,etat,categorie | ? | addObjet,activerObjetMobile,desactiverObjet,activerObjetFixe,getObjetActif,getObjetInvalide | ? | ? | ? | Domotique_r);
  List_Of_HiddenCst_Ids(Refinement(Domotique_r)) == (? | ?);
  List_Of_VisibleCst_Ids(Refinement(Domotique_r)) == (?);
  List_Of_VisibleVar_Ids(Refinement(Domotique_r)) == (? | ?);
  List_Of_Ids_SeenBNU(Refinement(Domotique_r)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Refinement(Domotique_r)) == (Type(OBJET) == Cst(SetOf(atype(OBJET,"[OBJET","]OBJET")));Type(ETAT) == Cst(SetOf(etype(ETAT,0,2)));Type(CATEGORIE) == Cst(SetOf(etype(CATEGORIE,0,1))))
END
&
THEORY ConstantsEnvX IS
  Constants(Refinement(Domotique_r)) == (Type(invalide) == Cst(etype(ETAT,0,2));Type(inactif) == Cst(etype(ETAT,0,2));Type(actif) == Cst(etype(ETAT,0,2));Type(fixe) == Cst(etype(CATEGORIE,0,1));Type(mobile) == Cst(etype(CATEGORIE,0,1)))
END
&
THEORY VariablesEnvX IS
  Variables(Refinement(Domotique_r)) == (Type(position) == Mvl(SetOf(atype(OBJET,?,?)*(btype(INTEGER,0,MAXINT)*btype(INTEGER,0,MAXINT))));Type(objet) == Mvl(SetOf(atype(OBJET,?,?)));Type(incompatible) == Mvl(SetOf(atype(OBJET,?,?)*atype(OBJET,?,?)));Type(etat) == Mvl(SetOf(atype(OBJET,?,?)*etype(ETAT,0,2)));Type(categorie) == Mvl(SetOf(atype(OBJET,?,?)*etype(CATEGORIE,0,1))))
END
&
THEORY OperationsEnvX IS
  Operations(Refinement(Domotique_r)) == (Type(getObjetInvalide) == Cst(SetOf(atype(OBJET,?,?)),No_type);Type(getObjetActif) == Cst(SetOf(atype(OBJET,?,?)),No_type);Type(activerObjetFixe) == Cst(No_type,No_type);Type(desactiverObjet) == Cst(No_type,atype(OBJET,?,?));Type(activerObjetMobile) == Cst(No_type,atype(OBJET,?,?));Type(addObjet) == Cst(No_type,atype(OBJET,?,?)*etype(CATEGORIE,?,?)))
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
