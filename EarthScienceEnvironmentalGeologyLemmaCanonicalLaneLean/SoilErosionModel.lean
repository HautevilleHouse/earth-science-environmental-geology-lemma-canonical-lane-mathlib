import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean

structure SoilErosionPackage where
  rainfallIntensity : ℝ
  soilErodibility : ℝ
  slopeLength : ℝ
  slopeSteepness : ℝ
  coverManagement : ℝ
  soilLoss : ℝ

structure SoilErosionEvidence (S : SoilErosionPackage) where
  rainfallIntensityClosed : S.rainfallIntensity ≥ 0
  soilErodibilityClosed : S.soilErodibility ≥ 0
  slopeLengthClosed : S.slopeLength > 0
  slopeSteepnessClosed : S.slopeSteepness ≥ 0
  coverManagementClosed : 0 ≤ S.coverManagement ∧ S.coverManagement ≤ 1
  soilLossClosed : S.soilLoss = S.rainfallIntensity * S.soilErodibility * S.slopeLength * S.slopeSteepness * S.coverManagement

def SoilErosionClosed (S : SoilErosionPackage) : Prop :=
  S.rainfallIntensity ≥ 0 ∧ S.soilErodibility ≥ 0 ∧ S.slopeLength > 0 ∧
  S.slopeSteepness ≥ 0 ∧ (0 ≤ S.coverManagement ∧ S.coverManagement ≤ 1) ∧
  S.soilLoss = S.rainfallIntensity * S.soilErodibility * S.slopeLength * S.slopeSteepness * S.coverManagement

theorem soil_erosion_closed_from_evidence (S : SoilErosionPackage) (E : SoilErosionEvidence S) : SoilErosionClosed S := by
  exact And.intro E.rainfallIntensityClosed (And.intro E.soilErodibilityClosed (And.intro E.slopeLengthClosed (And.intro E.slopeSteepnessClosed (And.intro E.coverManagementClosed E.soilLossClosed))))

end EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean
end HautevilleHouse