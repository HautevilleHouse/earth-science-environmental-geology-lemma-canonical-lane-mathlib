import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean

structure SoilSystem where
  soilHorizons : Nat
  organicMatterContent : ℝ
  erosionRate : ℝ
  soilFormation : Prop
  degradationResistance : Prop
  formationClosed : soilFormation
  resistanceClosed : degradationResistance

def SoilSystemClosed (S : SoilSystem) : Prop :=
  S.soilFormation ∧ S.degradationResistance

theorem soil_system_closed (S : SoilSystem) : SoilSystemClosed S := by
  exact And.intro S.formationClosed S.resistanceClosed

end EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean
end HautevilleHouse