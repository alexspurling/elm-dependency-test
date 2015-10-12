module Planet where

type Action = Update | PlanetAction Planet

type alias Planet =
  { name : String
  }

update : Action -> Planet
update action =
  Planet "Updated Planet"