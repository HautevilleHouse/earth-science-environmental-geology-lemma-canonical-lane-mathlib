import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean

structure ClimateSystem where
  radiativeForcing : ℝ
  temperatureResponse : ℝ
  feedbackLoops : Prop
  equilibriumSensitivity : ℝ
  feedbackClosed : feedbackLoops

def ClimateClosed (C : ClimateSystem) : Prop :=
  C.feedbackLoops ∧ C.equilibriumSensitivity > 0

theorem climate_closed_from_system (C : ClimateSystem) : ClimateClosed C := by
  exact And.intro C.feedbackClosed (by positivity)

end EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean
end HautevilleHouse