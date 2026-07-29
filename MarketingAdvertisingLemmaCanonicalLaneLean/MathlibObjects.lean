import MarketingAdvertisingLemmaCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace MarketingAdvertisingLemmaCanonicalLaneLean

structure MarketSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure AdmittedObject where
  market : MarketSpace
  targetAudienceReached : Prop
  conversionRateImproved : Prop
  roasModel : Type
  roasTopology : TopologicalSpace roasModel
  returnOnAdSpendValid : Prop
  conclusion : returnOnAdSpendValid

structure EndgameState where
  object : AdmittedObject

def WitnessClosed (O : AdmittedObject) : Prop :=
  O.returnOnAdSpendValid

end MarketingAdvertisingLemmaCanonicalLaneLean
end HautevilleHouse
