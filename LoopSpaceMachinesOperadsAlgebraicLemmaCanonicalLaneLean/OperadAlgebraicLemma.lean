import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopSpaceMachinesOperadsAlgebraicLemmaCanonicalLaneLean

structure Operad where
  colors : Type
  operations : Type
  composition : operations → operations → operations
  unit : operations
  associativity : Prop
  unitConditions : Prop

def OperadClosed (O : Operad) : Prop :=
  O.associativity ∧ O.unitConditions

end LoopSpaceMachinesOperadsAlgebraicLemmaCanonicalLaneLean
end HautevilleHouse
