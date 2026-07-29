import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopSpaceMachinesOperadsAlgebraicLemmaCanonicalLaneLean

structure MachinesOperadRepresentationPackage (P : LoopSpaceAlgebraicOperadPackage) where
  representationSpace : Type u
  actionMap : P.operadData → (representationSpace → representationSpace)
  actionCompatibility : Prop

structure MachinesOperadRepresentationEvidence {P : LoopSpaceAlgebraicOperadPackage}
    (R : MachinesOperadRepresentationPackage P) where
  actionCompatibilityClosed : R.actionCompatibility

def MachinesOperadRepresentationClosed {P : LoopSpaceAlgebraicOperadPackage}
    (R : MachinesOperadRepresentationPackage P) : Prop :=
  R.actionCompatibility

theorem machines_operad_representation_closed_from_evidence
    {P : LoopSpaceAlgebraicOperadPackage} (R : MachinesOperadRepresentationPackage P)
    (E : MachinesOperadRepresentationEvidence R) : MachinesOperadRepresentationClosed R := by
  exact E.actionCompatibilityClosed

end LoopSpaceMachinesOperadsAlgebraicLemmaCanonicalLaneLean
end HautevilleHouse