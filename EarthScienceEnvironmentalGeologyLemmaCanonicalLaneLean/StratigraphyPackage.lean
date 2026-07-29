import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean

structure StratigraphyPackage where
  rockLayer : Type u
  layerThickness : rockLayer -> ℕ
  stratigraphicOrder : rockLayer → rockLayer → Prop
  basinSetting : Prop

structure StratigraphyEvidence (S : StratigraphyPackage) where
  rockLayerNonempty : Nonempty S.rockLayer
  stratigraphicOrderTransitive : Transitive S.stratigraphicOrder
  basinSettingClosed : S.basinSetting

def StratigraphyClosed (S : StratigraphyPackage) : Prop :=
  Nonempty S.rockLayer ∧ Transitive S.stratigraphicOrder ∧ S.basinSetting

theorem stratigraphy_closed_from_evidence (S : StratigraphyPackage) (E : StratigraphyEvidence S) : StratigraphyClosed S := by
  exact And.intro E.rockLayerNonempty (And.intro E.stratigraphicOrderTransitive E.basinSettingClosed)

end EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean
end HautevilleHouse