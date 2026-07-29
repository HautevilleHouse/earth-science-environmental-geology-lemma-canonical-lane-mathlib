import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean

structure EarthSystemModel where
  lithosphere : Type
  hydrosphere : Type
  atmosphere : Type
  biosphere : Prop
  anthroposphere : Prop
  couplingMechanisms : Prop
  couplingClosed : couplingMechanisms

def earthSystemClosed (M : EarthSystemModel) : Prop :=
  M.biosphere ∧ M.anthroposphere ∧ M.couplingMechanisms

theorem earth_system_closed_from_model (M : EarthSystemModel) : earthSystemClosed M := by
  exact And.intro M.biosphere (And.intro M.anthroposphere M.couplingClosed)

end EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean
end HautevilleHouse