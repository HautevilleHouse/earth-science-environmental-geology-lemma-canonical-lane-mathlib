import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean

structure CarbonCycle where
  reservoirAtmosphere : ℝ
  reservoirOcean : ℝ
  reservoirLand : ℝ
  fluxesBalanced : Prop
  anthropogenicPerturbation : ℝ
  balanceClosed : fluxesBalanced

structure NutrientCycle where
  nitrogenFixation : Prop
  phosphorusWeathering : Prop
  cyclingComplete : Prop
  cyclingClosed : cyclingComplete

def GeochemicalCyclesClosed (C : CarbonCycle) (N : NutrientCycle) : Prop :=
  C.fluxesBalanced ∧ N.cyclingComplete

theorem geochemical_cycles_closed (C : CarbonCycle) (N : NutrientCycle) : GeochemicalCyclesClosed C N := by
  exact And.intro C.balanceClosed N.cyclingClosed

end EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean
end HautevilleHouse