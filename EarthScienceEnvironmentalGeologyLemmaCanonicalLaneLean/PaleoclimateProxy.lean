import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean

structure PaleoclimateProxyPackage where
  iceCoreRecord : Prop
  sedimentStratigraphy : Prop
  treeRingWidth : Prop
  coralBandThickness : Prop
  isotopicFractionation : Prop

structure PaleoclimateProxyEvidence (P : PaleoclimateProxyPackage) where
  iceCoreRecordClosed : P.iceCoreRecord
  sedimentStratigraphyClosed : P.sedimentStratigraphy
  treeRingWidthClosed : P.treeRingWidth
  coralBandThicknessClosed : P.coralBandThickness
  isotopicFractionationClosed : P.isotopicFractionation

def PaleoclimateProxyClosed (P : PaleoclimateProxyPackage) : Prop :=
  P.iceCoreRecord ∧ P.sedimentStratigraphy ∧ P.treeRingWidth ∧ P.coralBandThickness ∧ P.isotopicFractionation

theorem paleoclimate_proxy_closed_from_evidence (P : PaleoclimateProxyPackage) (E : PaleoclimateProxyEvidence P) :
    PaleoclimateProxyClosed P := by
  exact And.intro E.iceCoreRecordClosed
    (And.intro E.sedimentStratigraphyClosed
      (And.intro E.treeRingWidthClosed
        (And.intro E.coralBandThicknessClosed E.isotopicFractionationClosed)))

end EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean
end HautevilleHouse
