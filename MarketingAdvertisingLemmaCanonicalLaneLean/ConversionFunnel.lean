import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MarketingAdvertisingLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MarketingAdvertisingLemmaCanonicalLaneLean

structure FunnelStage where
  stageName : String
  reach : Nat
  conversion : Nat
  dropOffRate : Float

structure ConversionFunnelPackage where
  stages : List FunnelStage
  totalImpressions : Nat
  totalConversions : Nat
  funnelClosed : Prop

structure ConversionFunnelEvidence (F : ConversionFunnelPackage) where
  stagesNonempty : ¬ F.stages.isEmpty
  totalImpressionsPositive : F.totalImpressions > 0
  conversionsNonnegative : F.totalConversions ≥ 0
  funnelClosedClosed : F.funnelClosed

def ConversionFunnelClosed (F : ConversionFunnelPackage) : Prop :=
  F.funnelClosed ∧ ¬ F.stages.isEmpty ∧ F.totalImpressions > 0 ∧ F.totalConversions ≥ 0

theorem conversion_funnel_closed_from_evidence (F : ConversionFunnelPackage) (E : ConversionFunnelEvidence F) :
    ConversionFunnelClosed F := by
  exact And.intro E.funnelClosedClosed (And.intro E.stagesNonempty (And.intro E.totalImpressionsPositive E.conversionsNonnegative))

end MarketingAdvertisingLemmaCanonicalLaneLean
end HautevilleHouse
