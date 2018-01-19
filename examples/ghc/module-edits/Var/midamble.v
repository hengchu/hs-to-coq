Instance Unique_Var : Unique.Uniquable Var := {}.
Admitted.

Instance Default_IdScope : Default IdScope := Build_Default _ GlobalId.
Instance Default_Var : Default Var := Build_Default _ (Mk_Id default default default default default default).


Instance Name_NamedThing_TyCoVar : Name.NamedThing TyCoVar.
Admitted.
Instance Name_NamedThing_VarId : Name.NamedThing Var.Id.
Admitted.



Definition varType (arg_8__ : Var) :=
  match arg_8__ with
    | Core.Mk_TyVar _ _ varType => varType
    | Core.Mk_TcTyVar _ _ varType _ => varType
    | Core.Mk_Id _ _ varType _ _ _ => varType
  end.


Definition realUnique (arg_8__ : Var) :=
  match arg_8__ with
    | Core.Mk_TyVar _ u _ => u
    | Core.Mk_TcTyVar _ u _ _ => u
    | Core.Mk_Id _ u _ _ _ _ => u
  end.

Definition varName (arg_8__ : Var) :=
  match arg_8__ with
    | Core.Mk_TyVar n _ _ => n
    | Core.Mk_TcTyVar n _ _ _ => n
    | Core.Mk_Id n _ _ _ _ _ => n
  end.