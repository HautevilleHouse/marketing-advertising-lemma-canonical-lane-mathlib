import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MarketingAdvertisingLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MarketingAdvertisingLemmaCanonicalLaneLean

structure Touchpoint where
  channel : String
  weight : Float
  timestamp : Nat

structure AttributionModelPackage where
  touchpoints : List Touchpoint
  conversionValue : Float
  attributionMethod : String
  modelClosed : Prop

structure AttributionModelEvidence (M : AttributionModelPackage) where
  touchpointsNonempty : ¬ M.touchpoints.isEmpty
  conversionValuePositive : M.conversionValue > 0
  attributionMethodValid : M.attributionMethod ∈ ["first_touch", "last_touch", "linear", "time_decay"]
  modelClosedClosed : M.modelClosed

def AttributionModelClosed (M : AttributionModelPackage) : Prop :=
  M.modelClosed ∧ ¬ M.touchpoints.isEmpty ∧ M.conversionValue > 0 ∧ M.attributionMethod ∈ ["first_touch", "last_touch", "linear", "time_decay"]

theorem attribution_model_closed_from_evidence (M : AttributionModelPackage) (E : AttributionModelEvidence M) :
    AttributionModelClosed M := by
  exact And.intro E.modelClosedClosed (And.intro E.touchpointsNonempty (And.intro E.conversionValuePositive E.attributionMethodValid))

end MarketingAdvertisingLemmaCanonicalLaneLean
end HautevilleHouse
