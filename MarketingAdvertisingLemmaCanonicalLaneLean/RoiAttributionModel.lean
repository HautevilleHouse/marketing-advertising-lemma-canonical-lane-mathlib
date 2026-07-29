import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarketingAdvertisingLemmaCanonicalLaneLean

structure RoiAttributionPackage where
  customerJourney : Type u
  touchpoints : Type v
  conversionAttribution : Prop
  linearAttribution : Prop
  timeDecayAttribution : Prop

structure RoiAttributionEvidence (R : RoiAttributionPackage) where
  conversionAttributionClosed : R.conversionAttribution
  linearAttributionClosed : R.linearAttribution
  timeDecayAttributionClosed : R.timeDecayAttribution

def RoiAttributionClosed (R : RoiAttributionPackage) : Prop := R.conversionAttribution ∧ R.linearAttribution ∧ R.timeDecayAttribution

theorem roi_attribution_closed_from_evidence (R : RoiAttributionPackage) (E : RoiAttributionEvidence R) : RoiAttributionClosed R := by
  exact And.intro E.conversionAttributionClosed (And.intro E.linearAttributionClosed E.timeDecayAttributionClosed)

end MarketingAdvertisingLemmaCanonicalLaneLean
end HautevilleHouse