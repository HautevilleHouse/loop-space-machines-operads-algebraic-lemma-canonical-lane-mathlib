import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopSpaceMachinesOperadsAlgebraicLemmaCanonicalLaneLean

structure OperadHomotopyEquivPackage (P : LoopSpaceAlgebraicOperadPackage) where
  homotopyType : Type u
  homotopyEquivMap : P.operadData → P.operadData
  homotopyInverse : P.operadData → P.operadData
  compositionPreserved : Prop
  inversePreserved : Prop

structure OperadHomotopyEquivEvidence {P : LoopSpaceAlgebraicOperadPackage}
    (H : OperadHomotopyEquivPackage P) where
  compositionPreservedClosed : H.compositionPreserved
  inversePreservedClosed : H.inversePreserved

def OperadHomotopyEquivClosed {P : LoopSpaceAlgebraicOperadPackage}
    (H : OperadHomotopyEquivPackage P) : Prop :=
  H.compositionPreserved ∧ H.inversePreserved

theorem operad_homotopy_equiv_closed_from_evidence
    {P : LoopSpaceAlgebraicOperadPackage} (H : OperadHomotopyEquivPackage P)
    (E : OperadHomotopyEquivEvidence H) : OperadHomotopyEquivClosed H := by
  exact And.intro E.compositionPreservedClosed E.inversePreservedClosed

end LoopSpaceMachinesOperadsAlgebraicLemmaCanonicalLaneLean
end HautevilleHouse