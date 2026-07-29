import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarketingAdvertisingLemmaCanonicalLaneLean

def ConstrainedMarketingAdvertisingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_marketing_advertising_endgame (A : AdmissibleClass) :
    ConstrainedMarketingAdvertisingClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MarketingAdvertisingLemmaCanonicalLaneLean
end HautevilleHouse
