import HautevilleHouse.MarketingAdvertisingLemmaCanonicalLaneLean.BudgetAllocation

namespace HautevilleHouse
namespace MarketingAdvertisingLemmaCanonicalLaneLean

structure CampaignOptimizationPackage (B : BudgetAllocationPackage) where
  allocationStrategy : B.budgetType -> B.channelType -> Float
  roasTarget : Float
  conversionRateModel : String
  optimizationResult : Prop

structure CampaignOptimizationEvidence {B : BudgetAllocationPackage} (C : CampaignOptimizationPackage B) where
  allocationStrategyClosed : C.allocationStrategy 100.0 "social" > 0.0
  conversionRateModelClosed : C.conversionRateModel = "logistic"
  optimizationResultClosed : C.optimizationResult

def CampaignOptimizationClosed {B : BudgetAllocationPackage} (C : CampaignOptimizationPackage B) : Prop :=
  C.allocationStrategy 100.0 "social" > 0.0 ∧ C.conversionRateModel = "logistic" ∧ C.optimizationResult

theorem campaign_optimization_closed_from_evidence {B : BudgetAllocationPackage} (C : CampaignOptimizationPackage B) (E : CampaignOptimizationEvidence C) : CampaignOptimizationClosed C := by
  exact And.intro E.allocationStrategyClosed (And.intro E.conversionRateModelClosed E.optimizationResultClosed)

end MarketingAdvertisingLemmaCanonicalLaneLean
end HautevilleHouse