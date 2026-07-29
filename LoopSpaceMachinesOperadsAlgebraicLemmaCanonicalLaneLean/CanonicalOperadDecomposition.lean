import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopSpaceMachinesOperadsAlgebraicLemmaCanonicalLaneLean

structure CanonicalOperadDecompositionPackage {P : LoopSpaceAlgebraicOperadPackage}
    (R : MachinesOperadRepresentationPackage P) where
  suboperadDecomposition : Prop
  rootComponent : Prop
  leafComponent : Prop
  decompositionCompatibility : Prop

structure CanonicalOperadDecompositionEvidence {P : LoopSpaceAlgebraicOperadPackage}
    {R : MachinesOperadRepresentationPackage P}
    (D : CanonicalOperadDecompositionPackage R) where
  suboperadDecompositionClosed : D.suboperadDecomposition
  rootComponentClosed : D.rootComponent
  leafComponentClosed : D.leafComponent
  decompositionCompatibilityClosed : D.decompositionCompatibility

def CanonicalOperadDecompositionClosed {P : LoopSpaceAlgebraicOperadPackage}
    {R : MachinesOperadRepresentationPackage P}
    (D : CanonicalOperadDecompositionPackage R) : Prop :=
  D.suboperadDecomposition ∧ D.rootComponent ∧ D.leafComponent ∧ D.decompositionCompatibility

theorem canonical_operad_decomposition_closed_from_evidence
    {P : LoopSpaceAlgebraicOperadPackage} {R : MachinesOperadRepresentationPackage P}
    (D : CanonicalOperadDecompositionPackage R)
    (E : CanonicalOperadDecompositionEvidence D) : CanonicalOperadDecompositionClosed D := by
  exact And.intro E.suboperadDecompositionClosed
    (And.intro E.rootComponentClosed
      (And.intro E.leafComponentClosed E.decompositionCompatibilityClosed))

end LoopSpaceMachinesOperadsAlgebraicLemmaCanonicalLaneLean
end HautevilleHouse