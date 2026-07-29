import EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  EnvironmentalGeologyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean
end HautevilleHouse