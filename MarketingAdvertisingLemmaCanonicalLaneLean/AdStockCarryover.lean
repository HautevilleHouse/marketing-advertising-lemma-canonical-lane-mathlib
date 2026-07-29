import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarketingAdvertisingLemmaCanonicalLaneLean

structure AdStockPackage where
  adSpend : Type u
  decayRate : ℝ
  stock : Type v
  carryoverEquation : Prop

structure AdStockEvidence (A : AdStockPackage) where
  carryoverEquationClosed : A.carryoverEquation

def AdStockClosed (A : AdStockPackage) : Prop := A.carryoverEquation

theorem ad_stock_closed_from_evidence (A : AdStockPackage) (E : AdStockEvidence A) : AdStockClosed A := E.carryoverEquationClosed

end MarketingAdvertisingLemmaCanonicalLaneLean
end HautevilleHouse