import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean

structure WaterResources where
  groundwaterReservoir : ℝ
  surfaceWaterReservoir : ℝ
  qualityConstraints : Prop
  sustainabilityLimit : ℝ
  qualityClosed : qualityConstraints
  sustainabilityCheck : sustainabilityLimit > 0

def WaterResourcesClosed (W : WaterResources) : Prop :=
  W.qualityConstraints ∧ W.sustainabilityLimit > 0

theorem water_resources_closed (W : WaterResources) : WaterResourcesClosed W := by
  exact And.intro W.qualityClosed W.sustainabilityCheck

end EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean
end HautevilleHouse