import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean

structure FluidFlowPorousMediaPackage where
  darcyLawApplicable : Prop
  hydraulicConductivityField : Prop
  porosityModel : Prop
  contaminantTransport : Prop
  flowSteadyState : Prop

structure FluidFlowPorousMediaEvidence (F : FluidFlowPorousMediaPackage) where
  darcyLawApplicableClosed : F.darcyLawApplicable
  hydraulicConductivityFieldClosed : F.hydraulicConductivityField
  porosityModelClosed : F.porosityModel
  contaminantTransportClosed : F.contaminantTransport
  flowSteadyStateClosed : F.flowSteadyState

def FluidFlowPorousMediaClosed (F : FluidFlowPorousMediaPackage) : Prop :=
  F.darcyLawApplicable ∧ F.hydraulicConductivityField ∧ F.porosityModel ∧ F.contaminantTransport ∧ F.flowSteadyState

theorem fluid_flow_porous_media_closed_from_evidence (F : FluidFlowPorousMediaPackage)
    (E : FluidFlowPorousMediaEvidence F) : FluidFlowPorousMediaClosed F := by
  exact And.intro E.darcyLawApplicableClosed
    (And.intro E.hydraulicConductivityFieldClosed
      (And.intro E.porosityModelClosed
        (And.intro E.contaminantTransportClosed E.flowSteadyStateClosed)))

end EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean
end HautevilleHouse
