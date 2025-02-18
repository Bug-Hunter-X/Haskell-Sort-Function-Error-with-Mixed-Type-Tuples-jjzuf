```haskell
import Data.List (sort)

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

  -- The problem arises when comparing tuples with different types in a single list

  let mixed = [(1, "a"), (2, 10), (3, "c")]
  let sortedMixed = sort mixed
  print sortedMixed  -- This line will cause a runtime error because it compares different data types in a single list.
```