import HautevilleHouse.MarketingAdvertisingLemmaCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace MarketingAdvertisingLemmaCanonicalLaneLean

structure CustomerSegmentationPackage where
  segmentId : Type
  customerValue : segmentId -> Float
  responseRate : segmentId -> Float
  segmentCount : Nat
  segmentsNonempty : segmentCount > 0

structure CustomerSegmentationEvidence (C : CustomerSegmentationPackage) where
  customerValuePositive : ∀ (s : C.segmentId), C.customerValue s > 0.0
  responseRateNonnegative : ∀ (s : C.segmentId), C.responseRate s ≥ 0.0
  segmentsNonemptyClosed : C.segmentsNonempty

def CustomerSegmentationClosed (C : CustomerSegmentationPackage) : Prop :=
  (∀ (s : C.segmentId), C.customerValue s > 0.0) ∧ (∀ (s : C.segmentId), C.responseRate s ≥ 0.0) ∧ C.segmentsNonempty

theorem customer_segmentation_closed_from_evidence (C : CustomerSegmentationPackage) (E : CustomerSegmentationEvidence C) : CustomerSegmentationClosed C := by
  exact And.intro E.customerValuePositive (And.intro E.responseRateNonnegative E.segmentsNonemptyClosed)

end MarketingAdvertisingLemmaCanonicalLaneLean
end HautevilleHouse