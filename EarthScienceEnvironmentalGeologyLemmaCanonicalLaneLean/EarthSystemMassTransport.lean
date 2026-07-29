import HautevilleHouse.EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean.EarthSystemAdmissibleClass

/-!
# Mass Transport and Landslide Dynamics Package
-/

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean

structure MassTransportPackage where
  slopeStability : Prop
  erosionModel : Prop
  sedimentFlux : Prop
  landslideTrigger : Prop

structure MassTransportEvidence (M : MassTransportPackage) where
  slopeStabilityClosed : M.slopeStability
  erosionModelClosed : M.erosionModel
  sedimentFluxClosed : M.sedimentFlux
  landslideTriggerClosed : M.landslideTrigger

def MassTransportClosed (M : MassTransportPackage) : Prop :=
  M.slopeStability ∧ M.erosionModel ∧ M.sedimentFlux ∧ M.landslideTrigger

theorem mass_transport_closed_from_evidence (M : MassTransportPackage) (E : MassTransportEvidence M) :
    MassTransportClosed M := by
  exact And.intro E.slopeStabilityClosed (And.intro E.erosionModelClosed (And.intro E.sedimentFluxClosed E.landslideTriggerClosed))

end EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean
end HautevilleHouse
