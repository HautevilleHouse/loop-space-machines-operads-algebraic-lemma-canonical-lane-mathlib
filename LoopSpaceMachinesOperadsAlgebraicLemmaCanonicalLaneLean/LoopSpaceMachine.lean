import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopSpaceMachinesOperadsAlgebraicLemmaCanonicalLaneLean

structure LoopSpaceMachine where
  space : Type u
  basepoint : space
  loopSpace : Type u
  loopMultiplication : loopSpace → loopSpace → loopSpace
  associativity : Prop
  unit : loopSpace
  leftUnit : ∀ (x : loopSpace), loopMultiplication unit x = x
  rightUnit : ∀ (x : loopSpace), loopMultiplication x unit = x
  inverse : loopSpace → loopSpace
  leftInverse : ∀ (x : loopSpace), loopMultiplication (inverse x) x = unit
  rightInverse : ∀ (x : loopSpace), loopMultiplication x (inverse x) = unit

structure LoopSpaceMachineEvidence (M : LoopSpaceMachine) where
  associativityClosed : M.associativity
  leftUnitClosed : M.leftUnit
  rightUnitClosed : M.rightUnit
  leftInverseClosed : M.leftInverse
  rightInverseClosed : M.rightInverse

def LoopSpaceMachineClosed (M : LoopSpaceMachine) : Prop :=
  M.associativity ∧ M.leftUnit ∧ M.rightUnit ∧ M.leftInverse ∧ M.rightInverse

theorem loop_space_machine_closed_from_evidence (M : LoopSpaceMachine) (E : LoopSpaceMachineEvidence M) :
    LoopSpaceMachineClosed M := by
  exact And.intro E.associativityClosed
    (And.intro E.leftUnitClosed
      (And.intro E.rightUnitClosed
        (And.intro E.leftInverseClosed E.rightInverseClosed)))

end LoopSpaceMachinesOperadsAlgebraicLemmaCanonicalLaneLean
end HautevilleHouse