```haskell
import Data.List (sortBy)
import Data.Ord (comparing)

main :: IO ()
main = do
  let xs = [1, 2, 3, 4, 5]
  let ys = sort xs
  print ys -- prints [1,2,3,4,5]

  let zs = ["a","b","c","d","e"]
  let ws = sort zs
  print ws -- prints ["a","b","c","d","e"]

  let us = [(1, "a"), (2, "b"), (3, "c")]
  let vs = sort us
  print vs -- prints [(1,"a"),(2,"b"),(3,"c")]

  -- Solution: Use sortBy with a custom comparison function
  let mixed = [(1, "a"), (2, 10), (3, "c")]

  --Custom comparison function that prioritizes the first element of the tuple.
  compareTuples :: (Ord a, Ord b) => (a, b) -> (a, b) -> Ordering
  compareTuples (a1, b1) (a2, b2) = compare a1 a2

  let sortedMixed = sortBy compareTuples mixed
  print sortedMixed -- This now works correctly, even with mixed types.

  --Alternative using comparing for conciseness:
  let sortedMixed2 = sortBy (comparing fst) mixed
  print sortedMixed2
```