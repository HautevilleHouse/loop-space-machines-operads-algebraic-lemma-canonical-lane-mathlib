import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopSpaceMachinesOperadsAlgebraicLemmaCanonicalLaneLean

structure UniversalProperty (A : Type u) (B : Type v) where
  f : A → B
  uniqueness : ∀ (g h : A → B), (∀ x, g x = h x) → g = h

structure UniversalPropertyEvidence {A B : Type u} (U : UniversalProperty A B) where
  uniquenessClosed : ∀ (g h : A → B), (∀ x, g x = h x) → g = h

def UniversalPropertyClosed {A B : Type u} (U : UniversalProperty A B) : Prop :=
  ∀ (g h : A → B), (∀ x, g x = h x) → g = h

theorem universal_property_closed_from_evidence {A B : Type u} (U : UniversalProperty A B)
    (E : UniversalPropertyEvidence U) : UniversalPropertyClosed U := by
  intro g h
  exact E.uniquenessClosed g h

end LoopSpaceMachinesOperadsAlgebraicLemmaCanonicalLaneLean
end HautevilleHouse