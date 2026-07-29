import canonicalLaneMathlib.AdmissibleClass
import Mathlib.CategoryTheory.Monoidal.Braided

namespace HautevilleHouse
namespace LoopSpaceMachinesOperadsAlgebraicLemmaCanonicalLaneLean

structure LoopSpaceAlgebraicOperadPackage where
  targetType : Type u
  monoidalStructure : MonoidalCategoryStr targetType
  operadData : targetType
  compositionMorphism : targetType
  unitConstraint : targetType
  associativityCondition : Prop
  unitalityCondition : Prop

structure LoopSpaceAlgebraicOperadEvidence (P : LoopSpaceAlgebraicOperadPackage) where
  associativityConditionClosed : P.associativityCondition
  unitalityConditionClosed : P.unitalityCondition

def LoopSpaceAlgebraicOperadClosed (P : LoopSpaceAlgebraicOperadPackage) : Prop :=
  P.associativityCondition ∧ P.unitalityCondition

theorem loop_space_algebraic_operad_closed_from_evidence
    (P : LoopSpaceAlgebraicOperadPackage) (E : LoopSpaceAlgebraicOperadEvidence P) :
    LoopSpaceAlgebraicOperadClosed P := by
  exact And.intro E.associativityConditionClosed E.unitalityConditionClosed

end LoopSpaceMachinesOperadsAlgebraicLemmaCanonicalLaneLean
end HautevilleHouse