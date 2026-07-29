import LoopSpaceMachinesOperadsAlgebraicLemmaCanonicalLaneLean.LoopSpaceBridgeLemmas

namespace HautevilleHouse
namespace LoopSpaceMachinesOperadsAlgebraicLemmaCanonicalLaneLean

structure OperadicStructureDecompositionPackage where
  operad : AlgebraicOperad
  treeDecomposition : Prop
  partialCompositions : Prop
  universalProperty : Prop

structure OperadicStructureDecompositionEvidence (P : OperadicStructureDecompositionPackage) where
  treeDecompositionClosed : P.treeDecomposition
  partialCompositionsClosed : P.partialCompositions
  universalPropertyClosed : P.universalProperty

def OperadicStructureDecompositionClosed (P : OperadicStructureDecompositionPackage) : Prop :=
  P.treeDecomposition ∧ P.partialCompositions ∧ P.universalProperty

theorem operadic_structure_decomposition_closed_from_evidence
    (P : OperadicStructureDecompositionPackage) (E : OperadicStructureDecompositionEvidence P) :
    OperadicStructureDecompositionClosed P := by
  exact And.intro E.treeDecompositionClosed
    (And.intro E.partialCompositionsClosed E.universalPropertyClosed)

end LoopSpaceMachinesOperadsAlgebraicLemmaCanonicalLaneLean
end HautevilleHouse