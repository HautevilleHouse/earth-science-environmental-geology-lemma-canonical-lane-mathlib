import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean

structure EnvironmentalGeochemistry where
  contaminantTransport : Prop
  remediationProcesses : Prop
  bioavailability : Prop
  transportClosed : contaminantTransport
  remediationClosed : remediationProcesses
  bioavailabilityClosed : bioavailability

def GeochemistryClosed (G : EnvironmentalGeochemistry) : Prop :=
  G.contaminantTransport ∧ G.remediationProcesses ∧ G.bioavailability

theorem geochemistry_closed (G : EnvironmentalGeochemistry) : GeochemistryClosed G := by
  exact And.intro G.transportClosed (And.intro G.remediationClosed G.bioavailabilityClosed)

end EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean
end HautevilleHouse