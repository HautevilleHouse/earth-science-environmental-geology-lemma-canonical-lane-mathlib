import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean

structure ClimateForcingPackage where
  radiativeForcing : Prop
  greenhouseGasConcentration : Prop
  aerosolEffects : Prop
  albedoChange : Prop
  solarIrradiance : Prop

structure ClimateForcingEvidence (F : ClimateForcingPackage) where
  radiativeForcingClosed : F.radiativeForcing
  greenhouseGasConcentrationClosed : F.greenhouseGasConcentration
  aerosolEffectsClosed : F.aerosolEffects
  albedoChangeClosed : F.albedoChange
  solarIrradianceClosed : F.solarIrradiance

def ClimateForcingClosed (F : ClimateForcingPackage) : Prop :=
  F.radiativeForcing ∧ F.greenhouseGasConcentration ∧ F.aerosolEffects ∧ F.albedoChange ∧ F.solarIrradiance

theorem climate_forcing_closed_from_evidence (F : ClimateForcingPackage) (E : ClimateForcingEvidence F) :
    ClimateForcingClosed F := by
  exact And.intro E.radiativeForcingClosed
    (And.intro E.greenhouseGasConcentrationClosed
      (And.intro E.aerosolEffectsClosed
        (And.intro E.albedoChangeClosed E.solarIrradianceClosed)))

end EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean
end HautevilleHouse
