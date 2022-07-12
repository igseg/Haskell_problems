last_but_one :: (Eq a) => [a] -> Maybe a
last_but_one x = if x == []
  then Nothing
  else if drop 1 x == []
    then Nothing
    else if drop 2 x == []
      then Just (head x)
      else last_but_one (drop 1 x)
