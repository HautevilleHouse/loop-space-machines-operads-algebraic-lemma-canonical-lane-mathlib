import LoopSpaceMachinesOperadsAlgebraicLemmaCanonicalLaneLean.LoopSpaceMachineAdmissibleClass

namespace HautevilleHouse
namespace LoopSpaceMachinesOperadsAlgebraicLemmaCanonicalLaneLean

def AdmissibleAlgebraicWitnessClosed (O : AdmissibleAlgebraicObject) : Prop :=
  O.algebraStructureDefined

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AdmissibleAlgebraicWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end LoopSpaceMachinesOperadsAlgebraicLemmaCanonicalLaneLean
end HautevilleHouse