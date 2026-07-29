import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopSpaceMachinesOperadsAlgebraicLemmaCanonicalLaneLean

structure RepresentationTheorem where
  source : Type u
  target : Type v
  rep : source → target
  faithful : Prop
  full : Prop

structure RepresentationTheoremEvidence (R : RepresentationTheorem) where
  faithfulClosed : R.faithful
  fullClosed : R.full

def RepresentationTheoremClosed (R : RepresentationTheorem) : Prop :=
  R.faithful ∧ R.full

theorem representation_theorem_closed_from_evidence (R : RepresentationTheorem)
    (E : RepresentationTheoremEvidence R) : RepresentationTheoremClosed R := by
  exact And.intro E.faithfulClosed E.fullClosed

end LoopSpaceMachinesOperadsAlgebraicLemmaCanonicalLaneLean
end HautevilleHouse