module Main where

import Graphics.Element exposing (show)
import Planet exposing (Planet)
import Ship exposing (Ship)
import Shared exposing (Action)

type alias Model =
  { ship : Ship,
    planet : Planet
  }

model : Model
model = Model (Ship "Foo") (Planet "Bar")

update : Action -> Model -> Model
update action model =
  {model |
    ship <- (Ship.update action),
    planet <- (Planet.update action)
  }

main =
  show (update Shared.Init model)