import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean

structure SedimentTransportPDEPackage where
  timeParameter : Type u
  spatialDomain : Type v
  bathymetry : spatialDomain → ℝ
  transportEquation : Prop

def SedimentTransportPDEClosed (F : SedimentTransportPDEPackage) : Prop :=
  F.transportEquation

end EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean
end HautevilleHouse