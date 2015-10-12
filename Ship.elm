module Ship where

type Action = Update

type alias Ship =
  { name : String
  }

update : Action -> Ship
update action =
  Ship "Updated Ship"