import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean

structure CarbonCyclePackage where
  atmosphericReservoir : Prop
  oceanicUptake : Prop
  terrestrialBiosphere : Prop
  fossilFuelEmissions : Prop
  landUseChange : Prop

structure CarbonCycleEvidence (C : CarbonCyclePackage) where
  atmosphericReservoirClosed : C.atmosphericReservoir
  oceanicUptakeClosed : C.oceanicUptake
  terrestrialBiosphereClosed : C.terrestrialBiosphere
  fossilFuelEmissionsClosed : C.fossilFuelEmissions
  landUseChangeClosed : C.landUseChange

def CarbonCycleClosed (C : CarbonCyclePackage) : Prop :=
  C.atmosphericReservoir ∧ C.oceanicUptake ∧ C.terrestrialBiosphere ∧ C.fossilFuelEmissions ∧ C.landUseChange

theorem carbon_cycle_closed_from_evidence (C : CarbonCyclePackage) (E : CarbonCycleEvidence C) :
    CarbonCycleClosed C := by
  exact And.intro E.atmosphericReservoirClosed
    (And.intro E.oceanicUptakeClosed
      (And.intro E.terrestrialBiosphereClosed
        (And.intro E.fossilFuelEmissionsClosed E.landUseChangeClosed)))

end EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean
end HautevilleHouse
