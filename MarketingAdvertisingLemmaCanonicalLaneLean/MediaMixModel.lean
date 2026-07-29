import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarketingAdvertisingLemmaCanonicalLaneLean

structure MediaMixPackage where
  channels : Type u
  budgetAllocation : Type v
  responseCurves : Prop
  saturationEffect : Prop
  interactionEffect : Prop

structure MediaMixEvidence (M : MediaMixPackage) where
  responseCurvesClosed : M.responseCurves
  saturationEffectClosed : M.saturationEffect
  interactionEffectClosed : M.interactionEffect

def MediaMixClosed (M : MediaMixPackage) : Prop := M.responseCurves ∧ M.saturationEffect ∧ M.interactionEffect

theorem media_mix_closed_from_evidence (M : MediaMixPackage) (E : MediaMixEvidence M) : MediaMixClosed M := by
  exact And.intro E.responseCurvesClosed (And.intro E.saturationEffectClosed E.interactionEffectClosed)

end MarketingAdvertisingLemmaCanonicalLaneLean
end HautevilleHouse