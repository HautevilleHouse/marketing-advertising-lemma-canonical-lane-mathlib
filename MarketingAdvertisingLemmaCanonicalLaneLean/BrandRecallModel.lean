import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarketingAdvertisingLemmaCanonicalLaneLean

structure BrandRecallPackage where
  exposureFrequency : ℕ
  brandName : String
  recallRate : ℝ
  confidenceInterval : ℝ

structure BrandRecallEvidence (B : BrandRecallPackage) where
  recallRatePositive : B.recallRate > 0
  confidenceIntervalValid : B.confidenceInterval < 0.1

def BrandRecallClosed (B : BrandRecallPackage) : Prop :=
  B.recallRate > 0 ∧ B.confidenceInterval < 0.1

theorem brand_recall_closed_from_evidence (B : BrandRecallPackage) (E : BrandRecallEvidence B) :
    BrandRecallClosed B := by
  exact And.intro E.recallRatePositive E.confidenceIntervalValid

end MarketingAdvertisingLemmaCanonicalLaneLean
end HautevilleHouse