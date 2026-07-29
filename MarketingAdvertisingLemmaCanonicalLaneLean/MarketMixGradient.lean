import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarketingAdvertisingLemmaCanonicalLaneLean

structure MarketMixModel where
  mediaChannels : List String
  coefficients : List ℝ
  intercept : ℝ
  gradientVector : List ℝ

structure MarketMixEvidence (M : MarketMixModel) where
  coefficientsNonzero : ∀ c ∈ M.coefficients, c ≠ 0
  gradientNormPositive : List.sum (M.gradientVector.map (λ x => x*x)) > 0

def MarketMixClosed (M : MarketMixModel) : Prop :=
  (∀ c ∈ M.coefficients, c ≠ 0) ∧ List.sum (M.gradientVector.map (λ x => x*x)) > 0

theorem market_mix_closed_from_evidence (M : MarketMixModel) (E : MarketMixEvidence M) :
    MarketMixClosed M := by
  exact And.intro E.coefficientsNonzero E.gradientNormPositive

end MarketingAdvertisingLemmaCanonicalLaneLean
end HautevilleHouse