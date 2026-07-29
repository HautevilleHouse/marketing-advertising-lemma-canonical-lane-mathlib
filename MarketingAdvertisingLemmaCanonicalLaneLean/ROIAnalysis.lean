import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarketingAdvertisingLemmaCanonicalLaneLean

/-!
# ROI Analysis Package

This module defines the return-on-investment (ROI) analysis that serves as the
endpoint for the Marketing Advertising Lemma. It aggregates audience reach and
conversion data to determine whether a marketing strategy is admissible.
-/

structure ROIAnalysis where
  totalCost : Float
  totalRevenue : Float
  roi : Float := if totalCost > 0 then totalRevenue / totalCost else 0
  profitability : Prop := roi > 1.0

structure ROIAnalysisEvidence (R : ROIAnalysis) where
  totalCostPositive : R.totalCost > 0
  revenueExceedsCost : R.totalRevenue > R.totalCost
  roiClosed : R.roi > 1.0

def ROIAnalysisClosed (R : ROIAnalysis) : Prop :=
  R.totalCost > 0 ∧ R.totalRevenue > R.totalCost ∧ R.roi > 1.0

theorem roi_analysis_closed_from_evidence (R : ROIAnalysis)
    (E : ROIAnalysisEvidence R) : ROIAnalysisClosed R := by
  exact And.intro E.totalCostPositive (And.intro E.revenueExceedsCost E.roiClosed)

end MarketingAdvertisingLemmaCanonicalLaneLean
end HautevilleHouse
