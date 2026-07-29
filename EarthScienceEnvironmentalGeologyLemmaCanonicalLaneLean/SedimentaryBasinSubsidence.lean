import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean

structure SedimentaryBasinSubsidencePackage where
  tectonicForcing : Prop
  sedimentLoading : Prop
  compactionDriven : Prop
  isostasyModel : Prop
  totalSubsidenceMeasured : Prop

structure SedimentaryBasinSubsidenceEvidence (S : SedimentaryBasinSubsidencePackage) where
  tectonicForcingClosed : S.tectonicForcing
  sedimentLoadingClosed : S.sedimentLoading
  compactionDrivenClosed : S.compactionDriven
  isostasyModelClosed : S.isostasyModel
  totalSubsidenceMeasuredClosed : S.totalSubsidenceMeasured

def SedimentaryBasinSubsidenceClosed (S : SedimentaryBasinSubsidencePackage) : Prop :=
  S.tectonicForcing ∧ S.sedimentLoading ∧ S.compactionDriven ∧ S.isostasyModel ∧ S.totalSubsidenceMeasured

theorem sedimentary_basin_subsidence_closed_from_evidence (S : SedimentaryBasinSubsidencePackage)
    (E : SedimentaryBasinSubsidenceEvidence S) : SedimentaryBasinSubsidenceClosed S := by
  exact And.intro E.tectonicForcingClosed
    (And.intro E.sedimentLoadingClosed
      (And.intro E.compactionDrivenClosed
        (And.intro E.isostasyModelClosed E.totalSubsidenceMeasuredClosed)))

end EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean
end HautevilleHouse
