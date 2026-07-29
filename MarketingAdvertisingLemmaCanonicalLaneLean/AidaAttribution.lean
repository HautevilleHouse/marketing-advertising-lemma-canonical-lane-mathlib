import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarketingAdvertisingLemmaCanonicalLaneLean

structure AidaAttributionPackage where
  attention : Prop
  interest : Prop
  desire : Prop
  action : Prop

structure AidaAttributionEvidence (A : AidaAttributionPackage) where
  attentionClosed : A.attention
  interestClosed : A.interest
  desireClosed : A.desire
  actionClosed : A.action

def AidaAttributionClosed (A : AidaAttributionPackage) : Prop := A.attention ∧ A.interest ∧ A.desire ∧ A.action

theorem aida_attribution_closed_from_evidence (A : AidaAttributionPackage) (E : AidaAttributionEvidence A) : AidaAttributionClosed A := by
  exact And.intro E.attentionClosed (And.intro E.interestClosed (And.intro E.desireClosed E.actionClosed))

end MarketingAdvertisingLemmaCanonicalLaneLean
end HautevilleHouse