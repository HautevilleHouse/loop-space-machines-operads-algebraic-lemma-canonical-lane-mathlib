import LoopSpaceMachinesOperadsAlgebraicLemmaCanonicalLaneLean.OperadicStructureDecomposition

namespace HautevilleHouse
namespace LoopSpaceMachinesOperadsAlgebraicLemmaCanonicalLaneLean

structure RepresentationTheoremPackage
    (P : OperadicStructureDecompositionPackage) where
  targetCategory : Type u
  representationDefined : Prop
  fullFaithfulness : Prop
  essentialSurjectivity : Prop
  structurePreservation : Prop

structure RepresentationTheoremEvidence
    {P : OperadicStructureDecompositionPackage} (R : RepresentationTheoremPackage P) where
  representationDefinedClosed : R.representationDefined
  fullFaithfulnessClosed : R.fullFaithfulness
  essentialSurjectivityClosed : R.essentialSurjectivity
  structurePreservationClosed : R.structurePreservation

def RepresentationTheoremClosed
    {P : OperadicStructureDecompositionPackage} (R : RepresentationTheoremPackage P) : Prop :=
  R.representationDefined ∧ R.fullFaithfulness ∧ R.essentialSurjectivity ∧ R.structurePreservation

theorem representation_theorem_closed_from_evidence
    {P : OperadicStructureDecompositionPackage} (R : RepresentationTheoremPackage P)
    (E : RepresentationTheoremEvidence R) : RepresentationTheoremClosed R := by
  exact And.intro E.representationDefinedClosed
    (And.intro E.fullFaithfulnessClosed
      (And.intro E.essentialSurjectivityClosed E.structurePreservationClosed))

end LoopSpaceMachinesOperadsAlgebraicLemmaCanonicalLaneLean
end HautevilleHouse