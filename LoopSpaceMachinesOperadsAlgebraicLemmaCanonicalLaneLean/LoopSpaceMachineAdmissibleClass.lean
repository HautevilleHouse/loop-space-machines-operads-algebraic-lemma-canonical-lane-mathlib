import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopSpaceMachinesOperadsAlgebraicLemmaCanonicalLaneLean

structure AlgebraicOperad where
  carrier : Type u
  operations : Type v
  compositionLawful : Prop

structure LoopedSpaceAdjunction where
  space : Type u
  topology : TopologicalSpace space
  basepoint : space
  loopSpace : Type u
  loopTopology : TopologicalSpace loopSpace
  adjunctionData : Prop

structure AdmissibleAlgebraicObject where
  operad : AlgebraicOperad
  adjunction : LoopedSpaceAdjunction
  algebraStructureDefined : Prop
  conclusion : algebraStructureDefined

structure AdmissibleClass where
  object : AdmissibleAlgebraicObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  AdmissibleAlgebraicWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end LoopSpaceMachinesOperadsAlgebraicLemmaCanonicalLaneLean
end HautevilleHouse