import HautevilleHouse.MarketingAdvertisingLemmaCanonicalLaneLean.CustomerSegmentation

namespace HautevilleHouse
namespace MarketingAdvertisingLemmaCanonicalLaneLean

structure BudgetAllocationPackage (S : CustomerSegmentationPackage) where
  budgetType : Type
  channelType : Type
  totalBudget : Nat
  channelEfficiency : channelType -> Float
  allocationResult : Prop

structure BudgetAllocationEvidence {S : CustomerSegmentationPackage} (B : BudgetAllocationPackage S) where
  totalBudgetPositive : B.totalBudget > 0
  channelEfficiencyPositive : ∀ (c : B.channelType), B.channelEfficiency c > 0.0
  allocationResultClosed : B.allocationResult

def BudgetAllocationClosed {S : CustomerSegmentationPackage} (B : BudgetAllocationPackage S) : Prop :=
  B.totalBudget > 0 ∧ (∀ (c : B.channelType), B.channelEfficiency c > 0.0) ∧ B.allocationResult

theorem budget_allocation_closed_from_evidence {S : CustomerSegmentationPackage} (B : BudgetAllocationPackage S) (E : BudgetAllocationEvidence B) : BudgetAllocationClosed B := by
  exact And.intro E.totalBudgetPositive (And.intro E.channelEfficiencyPositive E.allocationResultClosed)

end MarketingAdvertisingLemmaCanonicalLaneLean
end HautevilleHouse