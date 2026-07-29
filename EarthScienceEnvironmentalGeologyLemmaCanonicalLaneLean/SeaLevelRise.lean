import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean

structure SeaLevelRisePackage where
  thermalExpansion : Prop
  glacialMelt : Prop
  iceSheetDynamics : Prop
  landSubsidence : Prop
  coastalErosion : Prop

structure SeaLevelRiseEvidence (S : SeaLevelRisePackage) where
  thermalExpansionClosed : S.thermalExpansion
  glacialMeltClosed : S.glacialMelt
  iceSheetDynamicsClosed : S.iceSheetDynamics
  landSubsidenceClosed : S.landSubsidence
  coastalErosionClosed : S.coastalErosion

def SeaLevelRiseClosed (S : SeaLevelRisePackage) : Prop :=
  S.thermalExpansion ∧ S.glacialMelt ∧ S.iceSheetDynamics ∧ S.landSubsidence ∧ S.coastalErosion

theorem sea_level_rise_closed_from_evidence (S : SeaLevelRisePackage) (E : SeaLevelRiseEvidence S) :
    SeaLevelRiseClosed S := by
  exact And.intro E.thermalExpansionClosed
    (And.intro E.glacialMeltClosed
      (And.intro E.iceSheetDynamicsClosed
        (And.intro E.landSubsidenceClosed E.coastalErosionClosed)))

end EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean
end HautevilleHouse
