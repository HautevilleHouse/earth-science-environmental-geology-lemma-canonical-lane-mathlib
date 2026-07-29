import HautevilleHouse.EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean.EarthSystemGateLemmas

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean

def EarthScienceEnvironmentalGeologyLemmaClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem earth_science_environmental_geology_lemma_endgame (A : AdmissibleClass) :
    EarthScienceEnvironmentalGeologyLemmaClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean
end HautevilleHouse
