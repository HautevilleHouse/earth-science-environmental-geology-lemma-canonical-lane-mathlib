import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean

structure WeatheringErosionPackage where
  chemicalWeathering : Prop
  physicalWeathering : Prop
  fluvialErosion : Prop
  windTransport : Prop
  glacialAbrasion : Prop

structure WeatheringErosionEvidence (W : WeatheringErosionPackage) where
  chemicalWeatheringClosed : W.chemicalWeathering
  physicalWeatheringClosed : W.physicalWeathering
  fluvialErosionClosed : W.fluvialErosion
  windTransportClosed : W.windTransport
  glacialAbrasionClosed : W.glacialAbrasion

def WeatheringErosionClosed (W : WeatheringErosionPackage) : Prop :=
  W.chemicalWeathering ∧ W.physicalWeathering ∧ W.fluvialErosion ∧ W.windTransport ∧ W.glacialAbrasion

theorem weathering_erosion_closed_from_evidence (W : WeatheringErosionPackage) (E : WeatheringErosionEvidence W) :
    WeatheringErosionClosed W := by
  exact And.intro E.chemicalWeatheringClosed
    (And.intro E.physicalWeatheringClosed
      (And.intro E.fluvialErosionClosed
        (And.intro E.windTransportClosed E.glacialAbrasionClosed)))

end EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean
end HautevilleHouse
