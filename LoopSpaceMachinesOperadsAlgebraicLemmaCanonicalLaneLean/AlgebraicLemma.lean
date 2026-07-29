import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopSpaceMachinesOperadsAlgebraicLemmaCanonicalLaneLean

structure AlgebraicLemma where
  hypothesis : Prop
  conclusion : Prop
  proof : hypothesis → conclusion

structure AlgebraicLemmaEvidence (L : AlgebraicLemma) where
  proofClosed : ∀ (h : L.hypothesis), L.conclusion

def AlgebraicLemmaClosed (L : AlgebraicLemma) : Prop :=
  ∀ (h : L.hypothesis), L.conclusion

theorem algebraic_lemma_closed_from_evidence (L : AlgebraicLemma) (E : AlgebraicLemmaEvidence L) :
    AlgebraicLemmaClosed L := by
  intro h
  exact E.proofClosed h

end LoopSpaceMachinesOperadsAlgebraicLemmaCanonicalLaneLean
end HautevilleHouse