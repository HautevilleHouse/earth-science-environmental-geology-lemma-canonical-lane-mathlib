import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean

structure EarthSystemObject where
  geologyModel : Type
  environmentalVariables : Type
  modelConsistent : Prop
  modelComplete : environmentalVariables → Prop
  conclusion : modelConsistent

structure AdmissibleClass where
  object : EarthSystemObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

end EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean
end HautevilleHouse
