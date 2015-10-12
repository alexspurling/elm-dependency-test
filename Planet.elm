module Planet where

import Shared exposing (Action)

type alias Planet =
  { name : String
  }

update : Action -> Planet
update action =
  Planet "Updated Planet"