import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarketingAdvertisingLemmaCanonicalLaneLean

structure AdmittedObject where
  advertisementChannel : Type u
  targetAudience : Type v
  conversionMetric : Prop
  channelClosed : Prop
  messageDelivered : conversionMetric → channelClosed

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (∀ (c : A.object.conversionMetric), A.object.channelClosed) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MarketingAdvertisingLemmaCanonicalLaneLean
end HautevilleHouse
