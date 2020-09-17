module Main exposing (main)

import Playground exposing (..)


main =
    game view update initialModel



-- MODEL


type alias Model =
    { x : Float
    , vx : Float
    }


initialModel =
    { x = 0
    , vx = 0
    }



--  UPDATE


deltaTime =
    0.016


update computer model =
    { x = model.x + deltaTime * model.vx
    , vx = model.vx + deltaTime * (toX computer.keyboard * 1000)
    }



--  VIEW


view : Computer -> Model -> List Shape
view computer model =
    [ words black "press arrow keys to move the ball"
        |> moveY 100
    , circle blue 20
        |> moveX model.x
    ]
