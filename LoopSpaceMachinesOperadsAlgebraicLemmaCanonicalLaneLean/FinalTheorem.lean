import canonicalLaneMathlib.AdmissibleClass
import LoopSpaceMachinesOperadsAlgebraicLemmaCanonicalLaneLean.AlgebraicLemmaBridge
import LoopSpaceMachinesOperadsAlgebraicLemmaCanonicalLaneLean.GateLemmas

/-!
# Final Theorem
This module defines the constrained closure for the algebraic lemma.
-/

namespace HautevilleHouse
namespace LoopSpaceMachinesOperadsAlgebraicLemmaCanonicalLaneLean

def ConstrainedAlgebraicLemmaClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_algebraic_lemma_endgame (A : AdmissibleClass) :
    ConstrainedAlgebraicLemmaClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end LoopSpaceMachinesOperadsAlgebraicLemmaCanonicalLaneLean
end HautevilleHouse