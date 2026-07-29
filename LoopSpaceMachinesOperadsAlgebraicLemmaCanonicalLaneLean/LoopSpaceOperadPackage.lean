import canonicalLaneMathlib.AdmissibleClass

/-!
# Loop Space Operad Package
This module defines the algebraic structures for loop space operads.
-/

namespace HautevilleHouse
namespace LoopSpaceMachinesOperadsAlgebraicLemmaCanonicalLaneLean

structure LoopingOperad where
  arities : Type u
  composition : arities → arities → arities
  unit : arities
  associativity : Prop
  unitLaws : Prop
  associativityTerm : associativity
  unitLawsTerm : unitLaws

structure LoopSpacePackage where
  basePoint : Type u
  loopSpace : Type v
  operadAction : LoopingOperad → ⦃f : basePoint → loopSpace⦄ → Prop
  osculatingStructure : Prop
  loopSpaceOperadCompatibility : Prop
  osculatingStructureTerm : osculatingStructure
  loopSpaceOperadCompatibilityTerm : loopSpaceOperadCompatibility

structure LoopSpaceOperadEvidence (L : LoopSpacePackage) where
  osculatingStructureClosed : L.osculatingStructure
  loopSpaceOperadCompatibilityClosed : L.loopSpaceOperadCompatibility

def LoopSpaceOperadClosed (L : LoopSpacePackage) : Prop :=
  L.osculatingStructure ∧ L.loopSpaceOperadCompatibility

theorem loop_space_operad_closed_from_evidence (L : LoopSpacePackage) (E : LoopSpaceOperadEvidence L) :
    LoopSpaceOperadClosed L := by
  exact And.intro E.osculatingStructureClosed E.loopSpaceOperadCompatibilityClosed

end LoopSpaceMachinesOperadsAlgebraicLemmaCanonicalLaneLean
end HautevilleHouse