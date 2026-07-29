import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean

structure HydrologicalCyclePackage where
  precipitationPattern : Prop
  evaporationRate : Prop
  runoffMechanism : Prop
  groundwaterRecharge : Prop
  cryosphericContribution : Prop

structure HydrologicalCycleEvidence (H : HydrologicalCyclePackage) where
  precipitationPatternClosed : H.precipitationPattern
  evaporationRateClosed : H.evaporationRate
  runoffMechanismClosed : H.runoffMechanism
  groundwaterRechargeClosed : H.groundwaterRecharge
  cryosphericContributionClosed : H.cryosphericContribution

def HydrologicalCycleClosed (H : HydrologicalCyclePackage) : Prop :=
  H.precipitationPattern ∧ H.evaporationRate ∧ H.runoffMechanism ∧ H.groundwaterRecharge ∧ H.cryosphericContribution

theorem hydrological_cycle_closed_from_evidence (H : HydrologicalCyclePackage) (E : HydrologicalCycleEvidence H) :
    HydrologicalCycleClosed H := by
  exact And.intro E.precipitationPatternClosed
    (And.intro E.evaporationRateClosed
      (And.intro E.runoffMechanismClosed
        (And.intro E.groundwaterRechargeClosed E.cryosphericContributionClosed)))

end EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean
end HautevilleHouse
