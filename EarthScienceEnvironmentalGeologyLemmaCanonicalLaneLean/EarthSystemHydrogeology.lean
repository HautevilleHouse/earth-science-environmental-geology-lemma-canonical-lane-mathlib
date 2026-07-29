import HautevilleHouse.EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean.EarthSystemCarbonCycle

/-!
# Hydrogeology and Groundwater Flow Package
-/

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean

structure HydrogeologyPackage where
  darcyFlow : Prop
  aquiferProperties : Prop
  contaminantTransport : Prop
  rechargeDischarge : Prop

structure HydrogeologyEvidence (H : HydrogeologyPackage) where
  darcyFlowClosed : H.darcyFlow
  aquiferPropertiesClosed : H.aquiferProperties
  contaminantTransportClosed : H.contaminantTransport
  rechargeDischargeClosed : H.rechargeDischarge

def HydrogeologyClosed (H : HydrogeologyPackage) : Prop :=
  H.darcyFlow ∧ H.aquiferProperties ∧ H.contaminantTransport ∧ H.rechargeDischarge

theorem hydrogeology_closed_from_evidence (H : HydrogeologyPackage) (E : HydrogeologyEvidence H) :
    HydrogeologyClosed H := by
  exact And.intro E.darcyFlowClosed (And.intro E.aquiferPropertiesClosed (And.intro E.contaminantTransportClosed E.rechargeDischargeClosed))

end EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean
end HautevilleHouse
