module Main where

import Graphics.Element exposing (show)
import Planet exposing (Planet)
import Ship exposing (Ship)

type Action =
  MainAction

type alias Model =
  { ship : Ship,
    planet : Planet
  }

model : Model
model = Model (Ship "Foo") (Planet "Bar")

update : Action -> Model -> Model
update action model =
  case action of
    MainAction ->
      {model |
        ship <- (Ship.update Ship.Update),
        planet <- (Planet.update (Planet.PlanetAction model.planet))
      }

main =
  show (update MainAction model)