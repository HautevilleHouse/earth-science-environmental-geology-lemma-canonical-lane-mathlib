import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean

structure ClimateForcingPackage where
  forcingType : Type u
  forcingMagnitude : ℝ → ℝ
  timescale : ℕ
  paleoclimateProxy : Prop

def ClimateForcingClosed (C : ClimateForcingPackage) : Prop :=
  C.paleoclimateProxy

end EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean
end HautevilleHouse