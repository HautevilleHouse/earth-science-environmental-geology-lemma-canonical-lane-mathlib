import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean

structure ErosionRatePackage where
  landform : Type u
  erosionRate : landform → ℝ
  weatheringFactor : landform → ℝ
  transportLimited : Prop
  weatheringLimited : Prop

def ErosionRateClosed (E : ErosionRatePackage) : Prop :=
  E.transportLimited ∧ E.weatheringLimited

end EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean
end HautevilleHouse