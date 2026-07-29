import HautevilleHouse.EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean.EarthSystemAdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.modelConsistent

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean
end HautevilleHouse
