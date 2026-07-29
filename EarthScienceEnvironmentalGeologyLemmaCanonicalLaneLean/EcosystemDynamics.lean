import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean

structure EcosystemDynamicsPackage where
  trophicStructure : Prop
  biodiversityIndex : Prop
  nutrientCycling : Prop
  primaryProductivity : Prop
  disturbanceRegime : Prop

structure EcosystemDynamicsEvidence (E : EcosystemDynamicsPackage) where
  trophicStructureClosed : E.trophicStructure
  biodiversityIndexClosed : E.biodiversityIndex
  nutrientCyclingClosed : E.nutrientCycling
  primaryProductivityClosed : E.primaryProductivity
  disturbanceRegimeClosed : E.disturbanceRegime

def EcosystemDynamicsClosed (E : EcosystemDynamicsPackage) : Prop :=
  E.trophicStructure ∧ E.biodiversityIndex ∧ E.nutrientCycling ∧ E.primaryProductivity ∧ E.disturbanceRegime

theorem ecosystem_dynamics_closed_from_evidence (E : EcosystemDynamicsPackage) (Ev : EcosystemDynamicsEvidence E) :
    EcosystemDynamicsClosed E := by
  exact And.intro Ev.trophicStructureClosed
    (And.intro Ev.biodiversityIndexClosed
      (And.intro Ev.nutrientCyclingClosed
        (And.intro Ev.primaryProductivityClosed Ev.disturbanceRegimeClosed)))

end EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean
end HautevilleHouse
