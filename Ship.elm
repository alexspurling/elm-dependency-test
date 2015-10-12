module Ship where

import Shared exposing (Action)

type alias Ship =
  { name : String
  }

update : Action -> Ship
update action =
  Ship "Updated Ship"