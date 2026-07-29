import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopSpaceMachinesOperadsAlgebraicLemmaCanonicalLaneLean

structure LoopSpace where
  point : Type
  loops : Type
  composition : loops → loops → loops
  identity : loops
  associativityProp : Prop
  identityProp : Prop

def LoopSpaceWitnessClosed (L : LoopSpace) : Prop :=
  L.associativityProp ∧ L.identityProp

end LoopSpaceMachinesOperadsAlgebraicLemmaCanonicalLaneLean
end HautevilleHouse
