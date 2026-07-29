import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean

structure ClimateSensitivityPackage where
  co2Concentration : ℝ
  radiativeForcing : ℝ
  climateSensitivity : ℝ
  temperatureAnomaly : ℝ

structure ClimateSensitivityEvidence (C : ClimateSensitivityPackage) where
  co2ConcentrationClosed : C.co2Concentration > 0
  radiativeForcingClosed : C.radiativeForcing = 5.35 * Real.log (C.co2Concentration / 280.0)
  climateSensitivityClosed : C.climateSensitivity > 0
  temperatureAnomalyClosed : C.temperatureAnomaly = C.climateSensitivity * C.radiativeForcing

def ClimateSensitivityClosed (C : ClimateSensitivityPackage) : Prop :=
  C.co2Concentration > 0 ∧
  C.radiativeForcing = 5.35 * Real.log (C.co2Concentration / 280.0) ∧
  C.climateSensitivity > 0 ∧
  C.temperatureAnomaly = C.climateSensitivity * C.radiativeForcing

theorem climate_sensitivity_closed_from_evidence (C : ClimateSensitivityPackage) (E : ClimateSensitivityEvidence C) : ClimateSensitivityClosed C := by
  exact And.intro E.co2ConcentrationClosed (And.intro E.radiativeForcingClosed (And.intro E.climateSensitivityClosed E.temperatureAnomalyClosed))

end EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean
end HautevilleHouse