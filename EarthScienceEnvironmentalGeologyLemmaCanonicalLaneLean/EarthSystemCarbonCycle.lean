import HautevilleHouse.EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean.EarthSystemMassTransport

/-!
# Carbon Cycle and Climate Feedback Package
-/

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean

structure CarbonCyclePackage where
  reservoirModel : Prop
  fluxRates : Prop
  anthropogenicPerturbation : Prop
  climateFeedback : Prop

structure CarbonCycleEvidence (C : CarbonCyclePackage) where
  reservoirModelClosed : C.reservoirModel
  fluxRatesClosed : C.fluxRates
  anthropogenicPerturbationClosed : C.anthropogenicPerturbation
  climateFeedbackClosed : C.climateFeedback

def CarbonCycleClosed (C : CarbonCyclePackage) : Prop :=
  C.reservoirModel ∧ C.fluxRates ∧ C.anthropogenicPerturbation ∧ C.climateFeedback

theorem carbon_cycle_closed_from_evidence (C : CarbonCyclePackage) (E : CarbonCycleEvidence C) :
    CarbonCycleClosed C := by
  exact And.intro E.reservoirModelClosed (And.intro E.fluxRatesClosed (And.intro E.anthropogenicPerturbationClosed E.climateFeedbackClosed))

end EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean
end HautevilleHouse
