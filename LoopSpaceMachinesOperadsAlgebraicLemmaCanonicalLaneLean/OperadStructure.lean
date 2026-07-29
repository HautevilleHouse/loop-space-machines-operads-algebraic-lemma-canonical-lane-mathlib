import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopSpaceMachinesOperadsAlgebraicLemmaCanonicalLaneLean

structure OperadStructure where
  colors : Type u
  operations : Type v
  arity : operations → List colors
  composition : operations → operations → (operations → operations) → operations
  unit : colors → operations
  associativityAxiom : Prop
  unitAxiom : Prop

structure OperadStructureEvidence (O : OperadStructure) where
  associativityAxiomClosed : O.associativityAxiom
  unitAxiomClosed : O.unitAxiom

def OperadStructureClosed (O : OperadStructure) : Prop :=
  O.associativityAxiom ∧ O.unitAxiom

theorem operad_structure_closed_from_evidence (O : OperadStructure) (E : OperadStructureEvidence O) :
    OperadStructureClosed O := by
  exact And.intro E.associativityAxiomClosed E.unitAxiomClosed

end LoopSpaceMachinesOperadsAlgebraicLemmaCanonicalLaneLean
end HautevilleHouse