import LoopSpaceMachinesOperadsAlgebraicLemmaCanonicalLaneLean.RepresentationTheoremPackage

namespace HautevilleHouse
namespace LoopSpaceMachinesOperadsAlgebraicLemmaCanonicalLaneLean

structure UniversalPropertyAdjointnessPackage
    {P : OperadicStructureDecompositionPackage}
    (R : RepresentationTheoremPackage P) where
  existingAdjunction : LoopedSpaceAdjunction
  universalPropertyFormulated : Prop
  adjointFunctorConstructed : Prop
  derivedKanExtension : Prop

structure UniversalPropertyAdjointnessEvidence
    {P : OperadicStructureDecompositionPackage}
    {R : RepresentationTheoremPackage P}
    (U : UniversalPropertyAdjointnessPackage R) where
  universalPropertyFormulatedClosed : U.universalPropertyFormulated
  adjointFunctorConstructedClosed : U.adjointFunctorConstructed
  derivedKanExtensionClosed : U.derivedKanExtension

def UniversalPropertyAdjointnessClosed
    {P : OperadicStructureDecompositionPackage}
    {R : RepresentationTheoremPackage P}
    (U : UniversalPropertyAdjointnessPackage R) : Prop :=
  U.universalPropertyFormulated ∧ U.adjointFunctorConstructed ∧ U.derivedKanExtension

theorem universal_property_adjointness_closed_from_evidence
    {P : OperadicStructureDecompositionPackage}
    {R : RepresentationTheoremPackage P}
    (U : UniversalPropertyAdjointnessPackage R)
    (E : UniversalPropertyAdjointnessEvidence U) : UniversalPropertyAdjointnessClosed U := by
  exact And.intro E.universalPropertyFormulatedClosed
    (And.intro E.adjointFunctorConstructedClosed E.derivedKanExtensionClosed)

end LoopSpaceMachinesOperadsAlgebraicLemmaCanonicalLaneLean
end HautevilleHouse