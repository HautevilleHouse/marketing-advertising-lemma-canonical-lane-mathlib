import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarketingAdvertisingLemmaCanonicalLaneLean

structure ConsumerChoiceModel where
  alternatives : List String
  utilities : List ℝ
  choiceProbability : ℝ

structure ConsumerChoiceEvidence (C : ConsumerChoiceModel) where
  utilitiesPositive : ∀ u ∈ C.utilities, u > 0
  choiceProbabilitySumOne : List.sum C.choiceProbabilities = 1.0

def ConsumerChoiceClosed (C : ConsumerChoiceModel) : Prop :=
  (∀ u ∈ C.utilities, u > 0) ∧ List.sum C.choiceProbabilities = 1.0

theorem consumer_choice_closed_from_evidence (C : ConsumerChoiceModel) (E : ConsumerChoiceEvidence C) :
    ConsumerChoiceClosed C := by
  exact And.intro E.utilitiesPositive E.choiceProbabilitySumOne

end MarketingAdvertisingLemmaCanonicalLaneLean
end HautevilleHouse