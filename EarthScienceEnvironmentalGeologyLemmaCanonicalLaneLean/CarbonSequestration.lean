import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean

structure CarbonSequestrationPackage where
  biomassDensity : ℝ
  soilCarbonContent : ℝ
  sequestrationRate : ℝ
  emissionRate : ℝ
  netSequestration : ℝ

structure CarbonSequestrationEvidence (C : CarbonSequestrationPackage) where
  biomassDensityClosed : C.biomassDensity ≥ 0
  soilCarbonContentClosed : C.soilCarbonContent ≥ 0
  sequestrationRateClosed : C.sequestrationRate ≥ 0
  emissionRateClosed : C.emissionRate ≥ 0
  netSequestrationClosed : C.netSequestration = C.sequestrationRate - C.emissionRate

def CarbonSequestrationClosed (C : CarbonSequestrationPackage) : Prop :=
  C.biomassDensity ≥ 0 ∧ C.soilCarbonContent ≥ 0 ∧
  C.sequestrationRate ≥ 0 ∧ C.emissionRate ≥ 0 ∧
  C.netSequestration = C.sequestrationRate - C.emissionRate

theorem carbon_sequestration_closed_from_evidence (C : CarbonSequestrationPackage) (E : CarbonSequestrationEvidence C) : CarbonSequestrationClosed C := by
  exact And.intro E.biomassDensityClosed (And.intro E.soilCarbonContentClosed (And.intro E.sequestrationRateClosed (And.intro E.emissionRateClosed E.netSequestrationClosed)))

end EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean
end HautevilleHouse