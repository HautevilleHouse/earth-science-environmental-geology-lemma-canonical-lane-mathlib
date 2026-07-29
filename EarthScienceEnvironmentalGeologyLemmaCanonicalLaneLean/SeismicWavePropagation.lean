import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean

structure SeismicWavePackage where
  mediumDensity : ℝ
  elasticModulus : ℝ
  waveSpeed : ℝ
  attenuationCoeff : ℝ

structure SeismicWaveEvidence (S : SeismicWavePackage) where
  mediumDensityClosed : S.mediumDensity > 0
  elasticModulusClosed : S.elasticModulus > 0
  waveSpeedClosed : S.waveSpeed = Real.sqrt (S.elasticModulus / S.mediumDensity)
  attenuationCoeffClosed : S.attenuationCoeff ≥ 0

def SeismicWaveClosed (S : SeismicWavePackage) : Prop :=
  S.mediumDensity > 0 ∧ S.elasticModulus > 0 ∧
  S.waveSpeed = Real.sqrt (S.elasticModulus / S.mediumDensity) ∧
  S.attenuationCoeff ≥ 0

theorem seismic_wave_closed_from_evidence (S : SeismicWavePackage) (E : SeismicWaveEvidence S) : SeismicWaveClosed S := by
  exact And.intro E.mediumDensityClosed (And.intro E.elasticModulusClosed (And.intro E.waveSpeedClosed E.attenuationCoeffClosed))

end EarthScienceEnvironmentalGeologyLemmaCanonicalLaneLean
end HautevilleHouse