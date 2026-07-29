import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarketingAdvertisingLemmaCanonicalLaneLean

structure AdResponseAttributionPackage where
  adId : String
  userSegment : String
  responseRate : ℝ
  attributionFraction : ℝ

structure AdResponseAttributionEvidence (A : AdResponseAttributionPackage) where
  responseRateBound : A.responseRate ≥ 0 ∧ A.responseRate ≤ 1
  attributionFractionNonnegative : A.attributionFraction ≥ 0

def AdResponseAttributionClosed (A : AdResponseAttributionPackage) : Prop :=
  (A.responseRate ≥ 0 ∧ A.responseRate ≤ 1) ∧ A.attributionFraction ≥ 0

theorem ad_response_attribution_closed_from_evidence (A : AdResponseAttributionPackage) (E : AdResponseAttributionEvidence A) :
    AdResponseAttributionClosed A := by
  exact And.intro E.responseRateBound E.attributionFractionNonnegative

end MarketingAdvertisingLemmaCanonicalLaneLean
end HautevilleHouse