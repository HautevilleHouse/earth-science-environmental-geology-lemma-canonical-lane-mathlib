import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean

structure GroundwaterFlowPackage where
  aquiferModel : Type u
  hydraulicConductivity : aquiferModel → ℝ
  hydraulicHead : aquiferModel → ℝ → ℝ
  darcyEquation : Prop
  continuityEquation : Prop

def GroundwaterFlowClosed (G : GroundwaterFlowPackage) : Prop :=
  G.darcyEquation ∧ G.continuityEquation

end EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean
end HautevilleHouse