import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean

structure GeochemicalCyclePackage where
  element : Type u
  reservoir : Type v
  flux : reservoir → reservoir → ℝ
  reservoirMass : reservoir → ℝ → ℝ
  massBalanceEquation : Prop

def GeochemicalCycleClosed (C : GeochemicalCyclePackage) : Prop :=
  C.massBalanceEquation

end EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean
end HautevilleHouse