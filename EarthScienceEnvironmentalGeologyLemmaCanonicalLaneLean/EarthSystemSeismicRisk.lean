import HautevilleHouse.EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean.EarthSystemHydrogeology

/-!
# Seismic Risk and Fault Mechanics Package
-/

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean

structure SeismicRiskPackage where
  faultMechanics : Prop
  stressStrain : Prop
  earthquakeRecurrence : Prop
  groundMotionModel : Prop

structure SeismicRiskEvidence (S : SeismicRiskPackage) where
  faultMechanicsClosed : S.faultMechanics
  stressStrainClosed : S.stressStrain
  earthquakeRecurrenceClosed : S.earthquakeRecurrence
  groundMotionModelClosed : S.groundMotionModel

def SeismicRiskClosed (S : SeismicRiskPackage) : Prop :=
  S.faultMechanics ∧ S.stressStrain ∧ S.earthquakeRecurrence ∧ S.groundMotionModel

theorem seismic_risk_closed_from_evidence (S : SeismicRiskPackage) (E : SeismicRiskEvidence S) :
    SeismicRiskClosed S := by
  exact And.intro E.faultMechanicsClosed (And.intro E.stressStrainClosed (And.intro E.earthquakeRecurrenceClosed E.groundMotionModelClosed))

end EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean
end HautevilleHouse
