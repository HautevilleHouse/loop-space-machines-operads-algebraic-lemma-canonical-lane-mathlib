import canonicalLaneMathlib.AdmissibleClass
import LoopSpaceMachinesOperadsAlgebraicLemmaCanonicalLaneLean.AlgebraicLemmaBridge

/-!
# Gate Lemmas
This module defines the gate closure condition.
-/

namespace HautevilleHouse
namespace LoopSpaceMachinesOperadsAlgebraicLemmaCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end LoopSpaceMachinesOperadsAlgebraicLemmaCanonicalLaneLean
end HautevilleHouse